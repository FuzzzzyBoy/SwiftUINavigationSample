//
//  GamesListViewModel.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import Combine

final class GamesListViewModel: ObservableObject {
    
    private(set) var gameViewModels = Game.allCases.map { GameViewModel(game: $0) }
    
    @Published var isSelectedGame = false
    
    private var selectedViewModel: GameViewModel?
    
    func getSelectionViewModel() -> GameViewModel {
        selectedViewModel ?? GameViewModel(game: .football)
    }
    
    func selectRandomGame() {
        selectedViewModel = gameViewModels.randomElement()
        selectedViewModel?.handler = {
            print("=== handler")
            self.resetSelection()
        }
        isSelectedGame = true
    }
    
    private func resetSelection() {
        selectedViewModel?.handler = nil
        isSelectedGame = false
    }

}
