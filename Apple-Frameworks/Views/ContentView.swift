//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by ZhZinekenov on 19.10.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        if #available(iOS 16, *) {
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink(value: framework) {
                                FrameworkTitleView(framework: framework)
                                    .onTapGesture {
                                        viewModel.selectedFramework = framework
                                    }
                            }
                        }
                    }
                }
                .navigationTitle("🍏 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView,
                                        framework: viewModel.selectedFramework ?? MockData.sampleFramework)
                }
            }
        } else {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink(destination: FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: framework)) {
                                FrameworkTitleView(framework: framework)
                                    .onTapGesture {
                                        viewModel.selectedFramework = framework
                                    }
                            }
                        }
                        .navigationTitle("🍏 Frameworks")
                        .sheet(item: $viewModel.selectedFramework) { selectedFramework in
                            FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: selectedFramework )
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
