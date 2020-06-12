//
//  File.swift
//
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation


// MARK: - EARTH SPELLS -
// ====================
// ====================
// ====================
public extension Spell {
    
    // MARK: Level 1
    static let shield = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .shield,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let slow = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .slow,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
     static let stoneSkin = Self.init(
         cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

         effect: .init(
             name: .stoneSkin,
             schoolOfMagic: <#T##MagicSchool#>,
             level: <#T##Level#>,
             context: <#T##Context#>,
             duration: <#T##Duration#>,
             generalDescription: <#T##String#>,
             basicEffectDescription: <#T##String#>,
             advancedEffectDescription: <#T##String#>,
             expertEffectDescription: <#T##String#>
         )
     )
    
    static let viewEarth = Self.init(
           cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

           effect: .init(
               name: .viewEarth,
               schoolOfMagic: <#T##MagicSchool#>,
               level: <#T##Level#>,
               context: <#T##Context#>,
               duration: <#T##Duration#>,
               generalDescription: <#T##String#>,
               basicEffectDescription: <#T##String#>,
               advancedEffectDescription: <#T##String#>,
               expertEffectDescription: <#T##String#>
           )
       )
      
    
    // MARK: Level 2
    static let deathRipple = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .deathRipple,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let quicksand = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .quicksand,
            schoolOfMagic: <#T##MagicSchool#>,
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
    static let animateDead = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .animateDead,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let antiMagic = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .antiMagic,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let earthQuake = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .earthQuake,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let forceField = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .forceField,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let protectionFromEarth = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .protectionFromEarth,
            schoolOfMagic: <#T##MagicSchool#>,
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
    static let meteorShower = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .meteorShower,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let resurrection = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .resurrection,
            schoolOfMagic: <#T##MagicSchool#>,
            level: <#T##Level#>,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let sorrow = Self.init(
           cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

           effect: .init(
               name: .sorrow,
               schoolOfMagic: <#T##MagicSchool#>,
               level: <#T##Level#>,
               context: <#T##Context#>,
               duration: <#T##Duration#>,
               generalDescription: <#T##String#>,
               basicEffectDescription: <#T##String#>,
               advancedEffectDescription: <#T##String#>,
               expertEffectDescription: <#T##String#>
           )
       )
    
    static let townPortal = Self.init(
           cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

           effect: .init(
               name: .townPortal,
               schoolOfMagic: <#T##MagicSchool#>,
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
    static let implosion = Self.init(
            cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

            effect: .init(
                name: .implosion,
                schoolOfMagic: <#T##MagicSchool#>,
                level: <#T##Level#>,
                context: <#T##Context#>,
                duration: <#T##Duration#>,
                generalDescription: <#T##String#>,
                basicEffectDescription: <#T##String#>,
                advancedEffectDescription: <#T##String#>,
                expertEffectDescription: <#T##String#>
            )
        )
    
    static let summonEarthElemental = Self.init(
            cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

            effect: .init(
                name: .summonEarthElemental,
                schoolOfMagic: <#T##MagicSchool#>,
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
