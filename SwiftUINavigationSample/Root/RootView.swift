//
//  RootView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: RootViewTab = .start
    
    @EnvironmentObject var viewModel: RootViewModel
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            StartView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "circle.grid.hex")
                    Text("Start")
            }
            .tag(RootViewTab.start)
            GamesListView(viewModel: viewModel.gamesListViewModel)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Games")
            }
            .tag(RootViewTab.games)
            AboutView()
                .tabItem {
                    Image(systemName: "person")
                    Text("About")
            }
            .tag(RootViewTab.about)
        }
    }
    
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(RootViewModel())
    }
}
