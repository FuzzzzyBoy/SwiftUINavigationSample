//
//  GamesListViewModel.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import Combine

final class GamesListViewModel: ObservableObject {
    
    private(set) var games = Game.allCases
    
    @Published var isSelectedGame = false

    var selectedGame: Game = .football

}
