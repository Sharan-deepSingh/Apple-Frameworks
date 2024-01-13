//
//  AppleFrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 10/12/23.
//

import Foundation

class AppleFrameworkGridViewModel: ObservableObject {
    
    var framework: Framework? {
        didSet {
            isDetailViewShowing = true
        }
    }
    @Published var isDetailViewShowing = false
}
