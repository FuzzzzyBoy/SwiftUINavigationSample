//
//  GamesView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct GamesListView: View {
    
    @ObservedObject var viewModel: GamesListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.games) { game in
                NavigationLink(destination: GameView(game: game), tag: game, selection: self.$viewModel.selected) {
                    Text(game.fullName)
                }
            }
            .navigationBarTitle("Games")
        }
    }
    
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesListView(viewModel: .init())
    }
}
