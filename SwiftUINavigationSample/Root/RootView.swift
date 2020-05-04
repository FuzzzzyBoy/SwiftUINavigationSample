//
//  RootView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct RootView: View {

    var body: some View {
        TabView {
            GamesListView(games: Game.allCases)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Games")
            }
            AboutView()
                .tabItem {
                    Image(systemName: "person")
                    Text("About")
            }
        }
    }

}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
