//
//  AppleFrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 10/12/23.
//

import SwiftUI

class AppleFrameworkGridViewModel: ObservableObject {
    
    //MARK: - Properties
    @Published var isDetailViewShowing = false
    var framework: Framework? { didSet { isDetailViewShowing = true } }
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
