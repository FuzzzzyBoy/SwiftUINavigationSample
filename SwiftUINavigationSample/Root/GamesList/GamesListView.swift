//
//  GamesView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct GamesListView: View {
    
    private(set) var games: [Game]
    
    var body: some View {
        NavigationView {
            List(games) { game in
                Text(game.fullName)
            }
        .navigationBarTitle("Games")
        }
    }

}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesListView(games: Game.allCases)
    }
}
