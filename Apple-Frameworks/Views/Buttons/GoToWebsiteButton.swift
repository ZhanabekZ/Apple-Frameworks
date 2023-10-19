//
//  GoToWebsiteButton.swift
//  Apple-Frameworks
//
//  Created by ZhZinekenov on 19.10.2023.
//

import SwiftUI

struct GoToWebsiteButton: View {
    @Binding var isShowingSafariView: Bool
    var body: some View {
        Button {
            isShowingSafariView = true
        } label: {
            Text("Learn more")
                .font(.subheadline)
                .foregroundColor(Color.white)
                .background(
                    RoundedRectangle(cornerRadius: 26).fill(Color.accentColor)
                        .frame(width: 100, height: 50)
                )
                .padding()
        }
    }
}
