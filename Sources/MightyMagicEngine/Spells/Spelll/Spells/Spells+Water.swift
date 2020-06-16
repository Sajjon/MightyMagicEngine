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
            context: .battle(.massBeneficial),
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
            context: .battle(
                selection: .target(
                    .dependingOnSkillLevel(
                        basic: .allied,
                        advanced: .allied,
                        expert: .none
                    )
                ),
                duration: .instant
            ),
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
                selection: .target(
                    .dependingOnSkillLevel(
                        basic: .allied,
                        advanced: .alliedOrEnemy,
                        expert: .none
                    )
                ),
                duration: .instant
            ),
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
            context: .battle(.massBeneficial),
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
                context: .adventureMap(selection: .none, duration: .instant),
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
            context: .battle(selection: .target(.always(.enemy)), duration: .instant),
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
            context: .battle(selection: .target(.always(.battlefieldTile)), duration: .instant),
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
             context: .adventureMap(selection: .none, duration: .instant),
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
            context: .battle(.massNegative),
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
           context: .battle(.massNegative),
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
            context: .battle(selection: .target(.always(.multiTileHittingEnemies)), duration: .instant),
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
            context: .battle(.massBeneficial),
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
            context: .battle(selection: .sourceAndTarget(source: .allied, target: .battlefieldTile), duration: .instant),
            generalDescription: "Move target allied troop to another unoccupied tile on the battlefield.",
            basicEffectDescription: "Target allied troop instantly moves to an unoccupied target hex. Troop cannot teleport over walls or moats.",
            advancedEffectDescription: "Same as Basic Effect, except troop can teleport over walls.",
            expertEffectDescription: "Troop can move to any unoccupied hex."
        )
    )
    

    
    // MARK: Level 4
    
    /// Creates an exact replica of the target creature stack, which has all of the original stack's features and special abilities.
    ///
    /// For example, cloning Pit Lords will create a Pit Lord that can summon Demons. Although only one clone of a
    /// single unit stack can exist at a time, it is possible to clone a unit stack multiple times if its clone is dispelled.
    /// The clone will disappear immediately (no retaliation) when it receives any damage. It will also be dispelled
    /// if the unit that the Clone-spell was casted on dies. Unlike other spells that summon a new creature, Clone's
    /// duration depends on the caster's spell power, as the clone lasts for 1 turn for each level of the caster's
    /// spell power.
    ///
    /// # Specialization
    /// Heroes specializing in Clone
    /// - Eovacius the Navigator (HotA)
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Gold Dragon
    /// - Black Dragon
    /// - Magic Elemental
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Clone
    ///
    static let clone = Self.init(
        cost: .init(normal: 24, reduced: 20),

        effect: .init(
            name: .clone,
            schoolOfMagic: .water,
            level: .four,
            context: .battle(selection: .target(.always(.allied)), duration: .oneRoundPerHeroPower),
            generalDescription: "creates an exact replica of the target creature stack, which has all of the original stack's features and special abilities.",
            basicEffectDescription: "Creates a duplicate of target, allied troop level 1-5. The duplicate can attack but is dispelled if it receives any damage.",
            advancedEffectDescription: "Same as Basic Effect, except the duplicate may be of a level 1-6 troop.",
            expertEffectDescription: "Same as Basic Effect, except the duplicate may be of a level 1-7 troop."
        )
    )
    
    /// Increases the Speed, Attack and Defense stats of a target, allied stack
    ///
    /// # Specialization
    /// Heroes specializing in Clone
    /// - Loynis the Cleric
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Gold Dragon
    /// - Black Dragon
    /// - Magic Elemental
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Prayer
    ///
    static let prayer = Self.init(
        cost: .init(normal: 16, reduced: 12),

        effect: .init(
            name: .prayer,
            schoolOfMagic: .water,
            level: .four,
            context: .battle(.massBeneficial),
            generalDescription: "Increases the Speed, Attack and Defense stats of a target, allied stack",
            basicEffectDescription: "Target, allied troop's attack, defense, and speed (hexes per turn) ratings are increased by 2.",
            advancedEffectDescription: "Target, allied troop's attack, defense, and speed (hexes per turn) ratings are increased by 4.",
            expertEffectDescription: "All allied troop's attack, defense, and speed ratings are increased by 4."
        )
    )
}

public extension Spell {
    
    /// Enables hero to move over water as if it were land, provided that she ends her turn on land.
    ///
    /// Movement cost is increased when moving over water.
    ///
    /// # Related artifact
    /// [Boots of Leviatation](x-source-tag://Artifact.bootsOfLeviatation)
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Water_Walk
    ///
    /// - Tag: Spell.waterWalk
    ///
    static let waterWalk = Self.init(
        cost: .init(normal: 12, reduced: 8),
        
        effect: .init(
            name: .waterWalk,
            schoolOfMagic: .water,
            level: .four,
            context: .adventureMap(selection: .none, duration: .oneDay),
            generalDescription: "Enables hero to move over water as if it were land, provided that he ends his turn on land.",
            basicEffectDescription: "The casting hero may follow a movement path across water, provided the end destination is an unoccupied location on land. Water movement may be up to 60% of the hero's normal movement.",
            advancedEffectDescription: "Same as basic effect, except that water movement may be up to 80% of the hero's normal movement.",
            expertEffectDescription: "Same as basic effect, except that water movement may be made at the hero's full, normal movement."
        )
    )
    
    
    // MARK: Level 5
    
    /// Summons water Elementals to fight for you in your army until end of battle.
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Summon_Water_Elemental
    ///
    static let summonWaterElemental = Self.init(
        cost: .init(normal: 25, reduced: 20),
        
        effect: .init(
            name: .summonWaterElemental,
            schoolOfMagic: .water,
            level: .five,
            context: .battle(selection: .target(.always(.none)), duration: .untilEndOfBattle),
            generalDescription: "Summons water Elementals to fight for you in your army until end of battle.",
            basicEffectDescription: "A troop containing (power x 2) water elementals appears on the side of the casting player. Only one type of elemental can be summoned.",
            advancedEffectDescription: "Same as basic effect, except that (power x 3) water elementals are summoned.",
            expertEffectDescription: "Same as basic effect, except that (power x 4) water elementals are summoned."
        )
    )
    
}
