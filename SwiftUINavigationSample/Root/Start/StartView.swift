//
//  StartView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
    @EnvironmentObject var viewModel: RootViewModel
    
    var body: some View {
        Button(action: {
            self.viewModel.selectedTab = .games
        }) {
            Text("Show games")
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
