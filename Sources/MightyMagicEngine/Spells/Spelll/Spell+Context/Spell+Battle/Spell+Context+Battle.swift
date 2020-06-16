//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-14.
//

import Foundation

// MARK: - BattleSelection
public extension Spell.Context {
    
    /// Information on how a battle spell is cast and its duration
    struct Battle {
        public let selection: Selection
        public let duration: Duration
    }
}

public extension Spell.Context.Battle {
    static let massBeneficial = Self.init(
        selection: .massBeneficial,
        duration: .oneRoundPerHeroPower
    )
    
    static let massNegative = Self.init(
        selection: .massNegative,
        duration: .oneRoundPerHeroPower
    )
    
    static let damageInflicting = Self.init(
        selection: .target(.always(.enemy)),
        duration: .instant
    )
}

// MARK: Battle Duration
public extension Spell.Context.Battle {
    
    enum Duration {
        
        /// Magic Missile is always `instant`, Slow is always `oneRoundPerHeroPower`
        case always(Value)
        
        /// Resurrection has a duration of `untilEndOfBattle` on `basic` level, but
        /// is `permanent` on `advanced` and `expert` level.
        case dependingOnSkillLevel(
            basic: Value,
            advanced: Value,
            expert: Value
        )
    }
}

public extension Spell.Context.Battle.Duration {
    
    /// Battle spell duration
    enum Value: String, Equatable {
        
        /// E.g. "Slow"
        case oneRoundPerHeroPower
        
        /// E.g. "Quicksand", "Landmine" etc
        case untilTouched
        
        /// E.g. "Frenzy"
        case untilTargetCreatureStacksNextTurn
        
        /// E.g. "Summon Fire Elementals"
        case untilEndOfBattle
        
        /// Effect lasts even after end of battle, e.g. "Sacrifice"
        case permanent
        
        /// E.g. "Armageddon"
        case instant
        
        /// E.g. "Forcefield"
        case twoRounds
    }
}


public extension Spell.Context.Battle.Duration {
    static let instant = Self.always(.instant)
    static let oneRoundPerHeroPower = Self.always(.oneRoundPerHeroPower)
    static let twoRounds = Self.always(.twoRounds)
    static let untilTouched = Self.always(.untilTouched)
    static let untilEndOfBattle = Self.always(.untilEndOfBattle)
    static let permanent = Self.always(.permanent)
    static let untilTargetCreatureStacksNextTurn = Self.always(.untilTargetCreatureStacksNextTurn)
}


// MARK: Battle Selection
public extension Spell.Context.Battle {
    enum Selection {
        case target(Target)
        
        case sourceAndTarget(
            source: Target.Option,
            target: Target.Option
        )
    }
}

public extension Spell.Context.Battle.Selection {
    
    static let massBeneficial = Self.target(
        .dependingOnSkillLevel(
            basic: .allied,
            advanced: .allied,
            expert: .none
        )
    )
 
    static let massNegative = Self.target(
        .dependingOnSkillLevel(
            basic: .enemy,
            advanced: .enemy,
            expert: .none
        )
    )
}


// MARK: - Target
public extension Spell.Context.Battle.Selection {
    enum Target {
        
        /// `Magic Missile` is *always just* cast on enemy creature stack.
        case always(Option)
        
        /// `Dispel`, `Haste`, `Slow`
        case skillLevelDependent(
            SkillLevelDependent
        )
        
        public struct SkillLevelDependent {
            public let basic: Option
            public let advanced: Option
            public let expert: Option
        }
        
        public static func dependingOnSkillLevel(
            basic: Option,
            advanced: Option,
            expert: Option
        ) -> Self {
            return Target.skillLevelDependent(.init(basic: basic, advanced: advanced, expert: expert))
        }
    }
}

public extension Spell.Context.Battle.Selection.Target.SkillLevelDependent {
    
    func requiresTarget(levels: MagicSchoolSkillLevels) -> Bool {
        implementMe
    }
}

// MARK: Target Opption
public extension Spell.Context.Battle.Selection.Target {
    struct Option: OptionSet {
        public let rawValue: Int
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }
}

public extension Spell.Context.Battle.Selection.Target.Option {
    
    /// Haste (but not "Mass Haste"), Resurrection, Sacrifice etc
    static let allied           = Self(rawValue: 1 << 0)
    
    /// Magic Arrow, Slow (but not "Mass slow"), Armageddon etc
    static let enemy            = Self(rawValue: 1 << 1)
    
    /// Remove obstacle, Force Field (2/3 hexes)
    static let battlefieldTile  = Self(rawValue: 1 << 2)
    
    /// Land Mine, Summon X Elementas, Mass Slow, Mass Haste, Mass Prayer etc...
    static let none: Self = []
    
    /// `Advanced` Dispel, Frenzy
    static let alliedOrEnemy:   Self = [.allied, .enemy]
    
    /// Spell effecting multiple tiles hitting at least one enemy
    /// E.g. Frost ring, Meteor Shower and Fire Ball etc.
    ///
    /// N.B. This is not the target option of the spell "Chain Lightning", which
    /// originates from a single enemy, and thus has target option `enemy`.
    static let multiTileHittingEnemies:   Self = [.enemy, .battlefieldTile]
}

public extension Spell.Context.Battle.Selection.Target.Option {
    var requiresTarget: Bool {
        self != .none
    }
    
}

public extension Spell.Context.Battle.Selection.Target {
    static let none = Self.always(.none)
    static let allied = Self.always(.allied)
    static let enemy = Self.always(.enemy)
    static let battlefieldTile = Self.always(.battlefieldTile)
    static let alliedOrEnemy = Self.always(.alliedOrEnemy)
}
