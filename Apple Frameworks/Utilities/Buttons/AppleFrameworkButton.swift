//
//  AppleFrameworkButton.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 05/12/23.
//

import SwiftUI

struct AppleFrameworkButton: View {
    
    let buttonText: String
    
    var body: some View {
        Text(buttonText)
            .font(.system(size: 22, weight: .semibold))
            .frame(width:280, height: 45)
            .background(Color("ButtonColor"))
            .foregroundColor(Color(.white))
            .cornerRadius(12)
    }
}

struct AppleFrameworkButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleFrameworkButton(buttonText: "Test")
    }
}
