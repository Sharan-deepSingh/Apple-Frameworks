//
//  SafariView.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 03/01/24.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    
    //MARK: - Constants
    let url: URL
    
    //MARK: - Methods
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
