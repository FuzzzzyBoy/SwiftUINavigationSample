//
//  Game.swift
//  SwiftUINavigationSample
//
//  Created by FuzzzzyBoy on 04.05.2020.
//  Copyright © 2020 FuzzzzyBoy. All rights reserved.
//

enum Game: String, CaseIterable, Identifiable {

    var id: Game { self }
    
    case football
    case basketball
    case rugby
    case tennis
    
    var fullName: String { symbol + " " + rawValue }
    
    private var symbol: String {
        switch self {
        case .football: return "⚽️"
        case .basketball: return "🏀"
        case .rugby: return "🏈"
        case .tennis: return "⚾️"
        }
    }
}
