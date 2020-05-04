//
//  GameView.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

import SwiftUI

struct GameView: View {
    
    private(set) var game: Game
    
    var body: some View {
        Text(game.fullName)
    }

}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: .football)
    }
}
