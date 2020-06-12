//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation


// MARK: - AIR SPELLS -
// ====================
// ====================
// ====================
public extension Spell {
    
    // MARK: Level 1
    static let haste = Self.init(
        cost: .init(normal: 6, reduced: 5),

        effect: .init(
            name: .haste,
            schoolOfMagic: .air,
            level: .one,
            context: .combat(.massBeneficial),
            duration: .oneRoundPerHeroPower,
            generalDescription: "Increases speed of target allied creature stack",
            basicEffectDescription: "Target, allied troop's speed is increased by three hexes/turn.",
            advancedEffectDescription: "Target, allied troop's speed is increased by five hexes/turn.",
            expertEffectDescription: "All allied troops' speed is increased by five hexes/turn."
        )
    )
    
    static let viewAir = Self.init(
        cost: .init(normal: 2, reduced: 1),

        effect: .init(
            name: .viewAir,
            schoolOfMagic: .air,
            level: .one,
            context: .adventureMap(target: .none),
            duration: .instant,
            generalDescription: "Displays noteworthy locations on the view world screen",
            basicEffectDescription: "Displays the location of all artifacts on the view world screen",
            advancedEffectDescription: "Displays the location of all artifacts and heroes on the view world screen.",
            expertEffectDescription: "Displays the location of all artifacts, heroes and towns."
        )
    )
    
    // MARK: Level 2
    static let disguise = Self.init(
        cost: .init(normal: 4, reduced: 2),

        effect: .init(
            name: .disguise,
            schoolOfMagic: .air,
            level: .two,
            context: .adventureMap(target: .none),
            duration: .oneDay,
            generalDescription: "Masks the hero's units on the adventure map from enemy players.",
            basicEffectDescription: "All of the hero's creature troops are displayed as if they were composed of the most powerful creatures in the hero's army. Troop population numbers are represented normally.",
            advancedEffectDescription: "Same as basic effect except troop population quantities are represented as `0`.",
            expertEffectDescription: "Same as advanced effect except all troops are represented as if populated by the most powerful creature in hero's longest owned town."
        )
    )
    
    /// Reduces target, enemy creature stack's defense
    static let disruptingRay = Self.init(
        cost: .init(normal: 10, reduced: 8),

        effect: .init(
            name: .disruptingRay,
            schoolOfMagic: .air,
            level: .two,
            context: .combat(.target(.always(.enemy))),
            duration: .untilEndOfCombat,
            generalDescription: "reduces target, enemy creature stack's defense",
            basicEffectDescription: "Reduces target, enemy troop's defense rating by 3.",
            advancedEffectDescription: "Reduces target, enemy troop's defense rating by 4.",
            expertEffectDescription: "Reduces target, enemy troop's defense rating by 5."
        )
    )
    
    static let fortune = Self.init(
        cost: .init(normal: 7, reduced: 5),

        effect: .init(
            name: .fortune,
            schoolOfMagic: .air,
            level: .two,
            context: .combat(.massBeneficial),
            duration: .oneRoundPerHeroPower,
            generalDescription: "increases luck of target, allied creature(s).",
            basicEffectDescription: "Increases luck of target, allied troop by 1.",
            advancedEffectDescription: "Increases luck of target, allied troop by 2.",
            expertEffectDescription: "Increases luck of all allied troops by 2."
        )
    )
    
    static let lightningBolt = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .lightningBolt,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let precision = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .precision,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let protectionFromAir = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .protectionFromAir,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    // MARK: Level 3
    static let airShield = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .airShield,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let destroyUndead = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .destroyUndead,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let hypnotize = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .hypnotize,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    // MARK: Level 4
    static let chainLightning = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .chainLightning,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let counterstrike = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .counterstrike,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    // MARK: Level 5
    static let dimensionDoor = Self(
        cost: .init(normal: 25, reduced: 20),
        
        effect: .init(
            name: .dimensionDoor,
            schoolOfMagic: .air,
            level: .five,
            context: .adventureMap,
            duration: .instant,
            generalDescription: "Once per day, you may teleport your hero to a visible, unoccupied location on the adventure map.",
            basicEffectDescription: "Teleports hero to a selected (unoccupied and visible) location on the adventure map. The spell may be cast twice per day and reduces the hero's movement by three tiles for each casting.",
            advancedEffectDescription: "Same as Basic Effect, except the spell may be cast three times in a day.",
            expertEffectDescription: "Same as Advanced Effect, except the spell may be cast four times in a day, and movement allowance is reduced by two tiles."
        )
    )
    
    static let fly = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .fly,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let magicMirror = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .magicMirror,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let summonAirElementals = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .summonAirElementals,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let titansLightningBolt = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .titansLightningBolt,
            schoolOfMagic: .air,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
}
