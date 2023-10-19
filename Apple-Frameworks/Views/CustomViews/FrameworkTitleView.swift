//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by ZhZinekenov on 19.10.2023.
//

import SwiftUI

struct FrameworkTitleView: View {
    @Environment(\.colorScheme) var colorScheme
    var framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .padding(5)
            Text(framework.name)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.frameworks[0])
    }
}
