//
//  GameView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct GameView: View {
    
    private(set) var viewModel: GameViewModel
    
    var body: some View {
        Text(viewModel.game.fullName)
            .onDisappear() {
                self.viewModel.handler?()
        }
    }

}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel(game: .basketball))
    }
}
