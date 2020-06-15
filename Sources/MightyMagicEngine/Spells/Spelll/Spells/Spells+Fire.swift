//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

// MARK: - FIRE SPELLS -
// ====================
// ====================
// ====================
public extension Spell {
    
    // MARK: Level 1
    static let landMine = Self(
        cost: .init(normal: 18, reduced: 15),
        
        effect: .init(
            name: .landMine,
            schoolOfMagic: .fire,
            level: .three,
            context: .battle(target: .battlefield),
            duration: .untilTouched,
            generalDescription: "Produces a number of land mines at random locations. All friendly troops can cross the mines safely. All enemy troops, except those immune, will take damage from the mines, but this spell cannot be cast if the enemy started the battle with at least one unit fighting on its Native Terrain which is not immune to the effects of the spell.",
            basicEffectDescription: "Landmines are placed in four random hexes on the battlefield. A troop stepping on a mine takes ((Power x 10) + 25) damage. Enemy creatures battling on their native terrain can see the mines and can cross them safely. To all others they are invisible.",
            advancedEffectDescription: "Same as basic effect, except that six mines are placed, and damage is ((Power x 10) + 50).",
            expertEffectDescription: "Same as basic effect, except that eight mines are placed, and damage is ((Power x 10) + 100)."
        )
    )
    
    static let blind = Self(
        cost: .init(normal: 10, reduced: 8),
        
        effect: .init(
            name: .blind,
            schoolOfMagic: .fire,
            level: .two,
            context: .battle(target: .enemyCreatureStack),
            duration: .oneRoundPerHeroPower,
            generalDescription: "Blind is a 2nd level spell in the School of Fire Magic. It makes the blinded creature stack immobile and completely lose its turn to act on battle round. Blind can be removed with Cure and Dispel spells, or it is removed if the creature is attacked in any way or the duration of the spell ends. If Blind is removed from a creature, it will have a chance to act on its turn as it normally would according to its initiative, or if its turn has already passed for the round, it will act immediately.",
            basicEffectDescription: "Target, enemy troop is frozen until attacked, dispelled or effect wears off. Deactivating attack is retaliated at 50% of base attack rating.",
            advancedEffectDescription: "Same as basic effect, except that deactivating attack is retaliated at 25% of base attack rating.",
            expertEffectDescription: "Same as basic effect, except that deactivating attack is not retaliated."
        )
    )
}
