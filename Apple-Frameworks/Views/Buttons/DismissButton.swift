//
//  DismissButton.swift
//  Apple-Frameworks
//
//  Created by ZhZinekenov on 19.10.2023.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowingDetailView: Bool
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        Button {
            isShowingDetailView = false
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .padding()
        }
    }
}
