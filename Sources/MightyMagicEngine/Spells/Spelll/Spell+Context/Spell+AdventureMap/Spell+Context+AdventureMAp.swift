//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-14.
//

import Foundation

// MARK: Adventure Map Spell
public extension Spell.Context {
    // Spells cast when not in battle.
    struct AdventureMap {
        public let selection: Selection
        public let duration: Duration
    }
}

// MARK: Map Spell Duration
public extension Spell.Context.AdventureMap {
    enum Duration {
        /// Effect last one day.
        case oneDay
        
        /// E.g. Dimension door
        case instant
    }
}

// MARK: Map Spell Selection

public extension Spell.Context.AdventureMap {
    struct Selection: OptionSet {
        public let rawValue: Int
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }
}

public extension Spell.Context.AdventureMap.Selection {
    
    /// Spells which requires no selection to be cast, .e.g. "View Earth"
    static let none                             = Self(rawValue: 1 << 0)
    
    /// E.g. Town Portal
    static let alliedTown                       = Self(rawValue: 1 << 1)
    
    /// E.g. Dimension Door
    static let unoccupiedTileReachableByHero    = Self(rawValue: 1 << 2)
}
