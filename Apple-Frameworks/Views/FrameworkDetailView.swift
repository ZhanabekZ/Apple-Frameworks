//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by ZhZinekenov on 19.10.2023.
//

import SwiftUI
import WebKit

struct FrameworkDetailView: View {
    @State private var isShowingSafariView = false
    @Binding var isShowingDetailView: Bool
    @Environment(\.colorScheme) var colorScheme
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                DismissButton(isShowingDetailView: $isShowingDetailView)
            }
            VStack {
                FrameworkTitleView(framework: framework)
                Spacer()
                Text(framework.description)
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .padding()
                Spacer()
                
                GoToWebsiteButton(isShowingSafariView: $isShowingSafariView)
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariWebView(url: URL(string: framework.urlString) ?? URL(string: "https:/www.apple.com")!)
        }
    }
}



