//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 03/12/23.
//

import SwiftUI

struct AppleFrameworksGridView: View {
    
    @StateObject var viewModel = AppleFrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(FrameworkDataModel.frameworks, id: \.self) { framework in
                        FrameworkView(framework: framework)
                            .onTapGesture {
                                viewModel.framework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
            .sheet(isPresented: $viewModel.isDetailViewShowing) {
                FrameworkDetailView(framework: viewModel.framework ?? FrameworkDataModel.dummyFramework,
                                    isDetailScreenDisplaying: $viewModel.isDetailViewShowing)
            }
        }
    }
}

struct AppleFrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        AppleFrameworksGridView()
    }
}
