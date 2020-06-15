//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    enum Context {
        case battle(Battle)
        case adventureMap(AdventureMap)
    }
}

public extension Spell.Context {
    
    static func battle(
        selection: Battle.Selection,
        duration: Battle.Duration
    ) -> Self {
        .battle(.init(selection: selection, duration: duration))
    }
    
    static func adventureMap(
        selection: AdventureMap.Selection,
        duration: AdventureMap.Duration
    ) -> Self {
        .adventureMap(.init(selection: selection, duration: duration))
    }
}
