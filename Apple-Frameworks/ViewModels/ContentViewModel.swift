//
//  ContentViewModel.swift
//  Apple-Frameworks
//
//  Created by ZhZinekenov on 19.10.2023.
//
import SwiftUI

final class ContentViewModel: ObservableObject {
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
}
