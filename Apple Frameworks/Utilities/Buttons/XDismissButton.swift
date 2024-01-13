//
//  XDismissButton.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 13/01/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isDetailScreenDisplaying: Bool
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isDetailScreenDisplaying = false
            } label: {
                Image(systemName: "xmark")
                    .renderingMode(.template)
                    .tint(Color(.label))
                    .imageScale(.large)
            }
            .padding()
        }
    }
}

#Preview {
    XDismissButton(isDetailScreenDisplaying: .constant(false))
}
