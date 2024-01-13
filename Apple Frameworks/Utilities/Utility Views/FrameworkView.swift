//
//  FrameworkView.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 03/12/23.
//

import SwiftUI

struct FrameworkView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.system(size: 12, weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.label))
                
        }
        .padding()
    }
}

struct FrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkView(framework: FrameworkDataModel.dummyFramework)
    }
}
