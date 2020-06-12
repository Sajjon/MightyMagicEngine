//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    enum Context: Equatable {
        case combat(CombatSelection)
        case adventureMap(target: AdventureMapSelectionOption)
    }
}


// MARK: - CombatSelection
public extension Spell.Context {
    enum CombatSelection: Equatable {
        case target(Target)
        
        case sourceAndTarget(source: CombatSelectionOption, target: CombatSelectionOption)
    }
}

public extension Spell.Context.CombatSelection {
    static let massBeneficial = Self.target(.dependingOnSkillLevel(basic: .allied, advanced: .allied, expert: .none))
}


// MARK: - Target
public extension Spell.Context.CombatSelection {
    enum Target: Equatable {
        /// Magic Missle is *always* just cast on enemy creature stack.
        case always(CombatSelectionOption)

        /// Dispell, Haste, Slow
        case dependingOnSkillLevel(
            basic: CombatSelectionOption,
            advanced: CombatSelectionOption,
            expert: CombatSelectionOption
        )
    }
}

public extension Spell.Context.CombatSelection.Target {
    struct CombatSelectionOption: OptionSet {
        public let rawValue: Int
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Land Mine, Summon X Elementas, Mass Slow, Mass Haste, Mass Prayer etc...
        static let none             = Self(rawValue: 1 << 0)
        /// Haste (but not "Mass Haste"), Resurrection, Sacrifice etc
        static let allied           = Self(rawValue: 1 << 1)
        /// Magic Arrow, Slow (but not "Mass slow"), Armageddon etc
        static let enemy            = Self(rawValue: 1 << 2)
        /// Remove obstacle
        static let battlefieldTile  = Self(rawValue: 1 << 4)
        /// `Advanced` Dispell, Frenzy
        static let alliedOrEnemy:   Self = [.allied, .enemy]
        /// Spell effecting multiple tiles hitting at least one enemy, e.g. frost ring
        static let multiTileHittingEnemies:   Self = [.enemy, .battlefieldTile]
    }
}

public extension Spell.Context {
    struct AdventureMapSelectionOption: OptionSet {
        public let rawValue: Int
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        static let none                                         = Self(rawValue: 1 << 0)
        static let alliedTown                                   = Self(rawValue: 1 << 1)
        static let unoccupiedTileOnAdventureMapReachableByHero  = Self(rawValue: 1 << 2)
    }
}
