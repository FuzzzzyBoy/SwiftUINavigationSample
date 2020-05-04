//
//  GameViewModel.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import Combine


final class GameViewModel: Identifiable {
    
    var id: Game { game }
    var game: Game
    
    var handler: (() -> Void)?
    
    init(game: Game) {
        self.game = game
    }

}
