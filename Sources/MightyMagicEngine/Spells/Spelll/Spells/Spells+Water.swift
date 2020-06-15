//
//  File.swift
//
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation


// MARK: - WATER SPELLS -
// ====================
// ====================
// ====================
public extension Spell {
    
    // MARK: Level 1
    static let bless = Self.init(
        cost: .init(normal: 5, reduced: 4),
        
        effect: .init(
            name: .bless,
            schoolOfMagic: .water,
            level: .one,
            context: .battle(target:
                .dependingOnSkillLevel(
                    basic: .allied,
                    advanced: .allied,
                    expert: .none
                )
            ),
            duration: .oneRoundPerHeroPower,
            generalDescription: "The Bless spell counters the Curse spell. Troop inflicts maximum damage when they attack",
            basicEffectDescription: "Creatures in target allied troop inflict maximum damage when they attack.",
            advancedEffectDescription: "Creatures in target allied troop inflict maximum damage +1 when they attack.",
            expertEffectDescription: "All allied creatures inflict maximum damage +1 when they attack."
        )
    )
    
    static let cure = Self.init(
        cost: .init(normal: 6, reduced: 5),

        effect: .init(
            name: .cure,
            schoolOfMagic: .water,
            level: .one,
            context: .battle(target:
                .dependingOnSkillLevel(
                    basic: .allied,
                    advanced: .allied,
                    expert: .none
                )
            ),
            duration: .instant,
            generalDescription: "Removes all negative spell effects from target, allied troop and heals it",
            basicEffectDescription: "Removes all negative spell effects from target, allied troop and heals it for (10 + (power x 5)) health points.",
            advancedEffectDescription: "Removes all negative spell effects from target, allied troop and heals it for (20 + (Power x 5)) health points.",
            expertEffectDescription: "Removes all negative spell effects from all allied troops and heals each for (30 + (Power x 5)) health points."
        )
    )
    
    static let dispell = Self.init(
        cost: .init(normal: 5, reduced: 4),
        
        effect: .init(
            name: .dispell,
            schoolOfMagic: .water,
            level: .one,
            context: .battle(
                target: .dependingOnSkillLevel(
                    basic: .allied,
                    advanced: .alliedOrEnemy,
                    expert: .none
                )
            ),
            duration: .instant,
            generalDescription: "Removes all spells from creatures, including Anti-Magic, but excluding the Disrupting Ray spell. Additionally, Dispel removes effects of Zombie's disease, Scorpicore's paralyze, Ghost Dragon's aging, Basilisk's and Medusa's petrification.",
            basicEffectDescription: "Removes all spell effects from target allied creature troop.",
            advancedEffectDescription: "Removes all spell effects from target allied or enemy creature troop.",
            expertEffectDescription: "Removes all spell effects from all creatures and the battlefield."
        )
    )
    
    static let protectionFromWater = Self.init(
           cost: .init(normal: 5, reduced: 4),

           effect: .init(
               name: .protectionFromWater,
               schoolOfMagic: .water,
               level: .one,
                   context: .battle(target:
                           .dependingOnSkillLevel(
                               basic: .allied,
                               advanced: .allied,
                               expert: .none
                           )
                       ),
                   duration: .oneRoundPerHeroPower,
               generalDescription: "Reduces damage from water spells for target allied troop.",
               basicEffectDescription: "Damage from water magic spells is reduced by 30% for target allied troop.",
               advancedEffectDescription: "Damage from water magic spells is reduced by 50% for target allied troop.",
               expertEffectDescription: "Damage from water magic spells is reduced by 50% for all allied troops."
           )
       )
      
    static let summonBoat = Self.init(
              cost: .init(normal: 8, reduced: 7),

              effect: .init(
                  name: .summonBoat,
                  schoolOfMagic: .water,
                  level: .one,
                  context: .adventureMap,
                  duration: .instant,
                  generalDescription: "Summons a boat",
                  basicEffectDescription: "Summons one of your hero's boats to their current location. If none of those boats are available, then one of your other heroes' boats is summoned. Spell has a 50% chance of working. The spell fails if there are no unoccupied boats available.",
                  advancedEffectDescription: "Same as basic effect, except that if no boats are available, a new one is created. The spell has a 75% chance of working. There are a maximum of sixty-four boats allowed on the Adventure Map at one time. The spell fails if all are occupied.",
                  expertEffectDescription: "Same as advanced effect, except that the spell has a 100% chance of working (unless all sixty-four boats are occupied)."
              )
          )
    
    // MARK: Level 2
    static let iceBolt = Self.init(
        cost: .init(normal: 8, reduced: 6),

        effect: .init(
            name: .iceBolt,
            schoolOfMagic: .water,
            level: .two,
            context: .battle(target: .always(.enemy)),
            duration: .instant,
            generalDescription: "Shoots an ice bolt at target enemy creature stack.",
            basicEffectDescription: "Target enemy troop receives (10 + (power x 20)) damage.",
            advancedEffectDescription: "Target enemy troop receives (20 + (power x 20)) damage.",
            expertEffectDescription: "Target enemy troop receives (50 + (power x 20)) damage."
        )
    )
    
    static let removeObstacle = Self.init(
        cost: .init(normal: 7, reduced: 5),

        effect: .init(
            name: .removeObstacle,
            schoolOfMagic: .water,
            level: .two,
            context: .battle(target: .always(.battlefieldTile)),
            duration: .instant,
            generalDescription: "Remove obstacle of choice from the battlefield (including those created by magic), except integrated objects such as Castle Walls, Cliffs and Rifts.",
            basicEffectDescription: "Removes one, non-magic obstacle from the battlefield. Integrated obstacles, such as cliffs are not affected.",
            advancedEffectDescription: "Same as basic effect, except fire walls may also be removed.",
            expertEffectDescription: "Same as advanced effect, except all, non-integrated obstacles can be removed."
        )
    )
    
    
     static let scuttleBoat = Self.init(
         cost: .init(normal: 8, reduced: 6),

         effect: .init(
             name: .scuttleBoat,
             schoolOfMagic: .water,
             level: .two,
             context: .adventureMap,
             duration: .instant,
             generalDescription: "Destroys unoccupied boats.",
             basicEffectDescription: "Spell has 50% chance of destroying a boat, unless occupied.",
             advancedEffectDescription: "Spell has 75% chance of destroying a boat, unless occupied.",
             expertEffectDescription: "Spell destroys a boat, unless occupied."
         )
     )
    
        /// Reduces the attack of target enemy stack.
       static let weakness = Self.init(
           cost: .init(normal: 8, reduced: 6),

           effect: .init(
               name: .weakness,
               schoolOfMagic: .water,
               level: .two,
               context: .battle(
                target: .dependingOnSkillLevel(
                    basic: .enemy,
                    advanced: .enemy,
                    expert: .none)
            ),
               duration: .oneRoundPerHeroPower,
               generalDescription: "Reduces the attack of target enemy stack.",
               basicEffectDescription: "Target enemy troop's attack rating is reduced by 3.",
               advancedEffectDescription: "Target enemy troop's attack rating is reduced by 6.",
               expertEffectDescription: "All enemy troops' attack ratings are reduced by 6."
           )
       )

 // MARK: Level 3
    static let forgetfulness = Self.init(
        cost: .init(normal: 12, reduced: 19),

        effect: .init(
            name: .forgetfulness,
            schoolOfMagic: .water,
            level: .three,
            context: .battle(
                target: .dependingOnSkillLevel(
                    basic: .enemy,
                    advanced: .enemy,
                    expert: .none
                )
            ),
            duration: .oneRoundPerHeroPower,
            generalDescription: "Reduced damaged inflicted by ranged enemy creatures",
            basicEffectDescription: "Half of the creatures in target, enemy troop, with ranged attack forget to shoot. Melee damage is reduced by 50%.",
            advancedEffectDescription: "Target, enemy troop with ranged attack cannot use its ranged attack. Melee damage is reduced by 50%",
            expertEffectDescription: "All enemy troops with ranged attacks cannot use their ranged attacks. Melee damage is reduced by 50%."
        )
    )
    
    static let frostRing = Self.init(
        cost: .init(normal: 12, reduced: 9),

        effect: .init(
            name: .frostRing,
            schoolOfMagic: .water,
            level: .three,
            context: .battle(target: .always(.multiTileHittingEnemies)),
            duration: .instant,
            generalDescription: "Causes creatures in the hexes surrounding target hex receive damage.",
            basicEffectDescription: "Troops in hexes surrounding target hex receive (15 + (power x 10)) in damage. Target hex is unaffected.",
            advancedEffectDescription: "Troops in hexes surrounding target hex receive (30 + (power x 10)) in damage. Target hex is unaffected.",
            expertEffectDescription: "Troops in hexes surrounding target hex receive (60 + (power x 10)) in damage. Target hex is unaffected."
        )
    )
    
    static let mirth = Self.init(
        cost: .init(normal: 12, reduced: 9),

        effect: .init(
            name: .mirth,
            schoolOfMagic: .water,
            level: .three,
            context: .battle(target: .dependingOnSkillLevel(basic: .allied, advanced: .allied, expert: .none)),
            duration: .oneRoundPerHeroPower,
            generalDescription: "Increases morale of target allied stack.",
            basicEffectDescription: "Morale of target allied troop is increased by 1.",
            advancedEffectDescription: "Morale of target allied troop is increased by 2.",
            expertEffectDescription: "Morale of all allied troops is increased by 2."
        )
    )
    
    static let teleport = Self.init(
        cost: .init(normal: 15, reduced: .dependingOnLevel(basic: 12, advanced: 6, expert: 3)),

        effect: .init(
            name: .teleport,
            schoolOfMagic: .water,
            level: .three,
            context: .battle(target: .always(.allied)),
            duration: .instant,
            generalDescription: "Move target allied troop to another unoccupied tile on the battlefield.",
            basicEffectDescription: "Target allied troop instantly moves to an unoccupied target hex. Troop cannot teleport over walls or moats.",
            advancedEffectDescription: "Same as Basic Effect, except troop can teleport over walls.",
            expertEffectDescription: "Troop can move to any unoccupied hex."
        )
    )
    

    
    // MARK: Level 4
    static let clone = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .clone,
            schoolOfMagic: .water,
            level: .four,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let prayer = Self.init(
        cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

        effect: .init(
            name: .prayer,
            schoolOfMagic: .water,
            level: .four,
            context: <#T##Context#>,
            duration: <#T##Duration#>,
            generalDescription: <#T##String#>,
            basicEffectDescription: <#T##String#>,
            advancedEffectDescription: <#T##String#>,
            expertEffectDescription: <#T##String#>
        )
    )
    
    static let waterWalk = Self.init(
           cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

           effect: .init(
               name: .waterWalk,
               schoolOfMagic: .water,
               level: .four,
               context: <#T##Context#>,
               duration: <#T##Duration#>,
               generalDescription: <#T##String#>,
               basicEffectDescription: <#T##String#>,
               advancedEffectDescription: <#T##String#>,
               expertEffectDescription: <#T##String#>
           )
       )

    
    // MARK: Level 5
    static let summonWaterElemental = Self.init(
            cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

            effect: .init(
                name: .summonWaterElemental,
                schoolOfMagic: .water,
                level: .five,
                context: <#T##Context#>,
                duration: <#T##Duration#>,
                generalDescription: <#T##String#>,
                basicEffectDescription: <#T##String#>,
                advancedEffectDescription: <#T##String#>,
                expertEffectDescription: <#T##String#>
            )
        )

}
