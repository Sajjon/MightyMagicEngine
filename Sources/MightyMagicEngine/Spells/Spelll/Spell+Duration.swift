//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    
    enum Duration: String, Equatable {
        
        /// E.g. "Slow"
        case oneRoundPerHeroPower
        
        /// E.g. "Quicksand", "Landmine" etc
        case untilTouched
        
        /// E.g. "Frenzy"
        case untilTargetCreatureStacksNextTurn
        
        /// E.g. "Summon Fire Elementals"
        case untilEndOfCombat
        
        /// Effect lasts even after end of combat, e.g. "Sacrifice"
        case permanent
        
        /// E.g. "Armageddon"
        case instant
        
        /// E.g. "Forcefield"
        case twoRounds
        
        /// Adventure map only
        case oneDay
    }
}
