//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 05/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isDetailScreenDisplaying: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
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
            
            Spacer()
            
            FrameworkView(framework: framework)
            
            Text(framework.description)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AppleFrameworkButton(buttonText: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.apple.com/")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: FrameworkDataModel.dummyFramework,
                            isDetailScreenDisplaying: .constant(false))
    }
}
