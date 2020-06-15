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
    
    /// Reduces melee damage done to target allied stack or all allied stacks.
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Green and Gold Dragon
    /// - Red and Black Dragon
    /// - Magic Elemental
    /// - Azure Dragon
    ///
    /// # Starts with spell
    /// - Galthran the Death Knight
    /// - Jaegar the Warlock
    /// - Neela the Alchemist
    /// - Nimbus the Necromancer
    /// - Piquedram the Alchemist
    /// - Styg the Witch
    /// - Theodorus the Wizard
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Shield
    ///
    static let shield = Self.init(
        cost: .init(normal: 5, reduced: 4),

        effect: .init(
            name: .shield,
            schoolOfMagic: .earth,
            level: .one,
            context: .battle(.massBeneficial)
            generalDescription: "Reduces melee damage done to target allied stack or all allied stacks.",
            basicEffectDescription: "Hand-to-hand damage delivered to target, allied troop is reduced by 15%.",
            advancedEffectDescription: "Hand-to-hand damage delivered to target, allied troop is reduced by 30%.",
            expertEffectDescription: "Hand-to-hand damage delivered to all allied troops is reduced by 30%."
        )
    )
    
    /// Reduces the speed of target enemy stack.
    ///
    /// It is one of the game's strongest hindering spells. The new speed is rounded down.
    /// Additionally, slow counters the haste spell.
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Green and Gold Dragon
    /// - Red and Black Dragon
    /// - Magic Elemental
    /// - Azure Dragon
    ///
    /// # Starts with spell
    /// - Geon the Warlock
    /// - Grindan the Elementalist
    /// - Gundula the Battle Mage
    /// - Moandor the Death Knight
    /// - Sandro the Necromancer
    /// - Voy the Witch
    /// - Andal the Navigator Horn of the Abyss
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Slow
    ///
    static let slow = Self.init(
        cost: .init(normal: 6, reduced: 5),
        
        effect: .init(
            name: .slow,
            schoolOfMagic: .earth,
            level: .one,
            context: .battle(.massNegative),
            generalDescription: "Reduces the speed of target enemy stack.",
            basicEffectDescription: "Target, enemy troop's speed is reduced to 25% of normal.",
            advancedEffectDescription: "Target, enemy troop's speed is reduced to 50% of normal.",
            expertEffectDescription: "All enemy troops' speed ratings are reduced to 50% of normal."
        )
    )
    
    /// Increases target, allied troop's defense.
    ///
    /// # Specialization
    /// Heroes specializing in Stone Skin
    /// - Darkstorn Darkstorn the Warlock
    /// - Labetha Labetha the Elementalist
    /// - Merist Merist the Witch
    /// - Xsi Xsi the Necromancer
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Green and Gold Dragon
    /// - Red and Black Dragon
    /// - Magic Elemental
    /// - Azure Dragon
    ///
    /// # Starts with spell
    /// - Darkstorn the Warlock
    /// - Dessa the Battle Mage
    /// - Halon the Wizard
    /// - Labetha the Elementalist
    /// - Merist the Witch
    /// - Rion the Cleric
    /// - Tiva the Witch
    /// - Vokial the Death Knight
    /// - Xsi the Necromancer
    /// - Zydar the Heretic
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Stone_Skin
    ///
    static let stoneSkin = Self.init(
        cost: .init(normal: 5, reduced: 4),
        
        effect: .init(
            name: .stoneSkin,
            schoolOfMagic: .earth,
            level: .one,
            context: .battle(.massBeneficial),
            generalDescription: "Increases target, allied troop's defense.",
            basicEffectDescription: "Target, allied troop's defense rating is increased by 3.",
            advancedEffectDescription: "Target, allied troop's defense rating is increased by 6.",
            expertEffectDescription: "All allied troops' defense ratings are increased by 6."
        )
    )
    
    /// Shows the spots of interest on the view world screen
    ///
    /// # Starts with spell
    /// - Ayden the Heretic
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/View_Earth
    ///
    static let viewEarth = Self.init(
           cost: .init(normal: 2, reduced: 1),

           effect: .init(
               name: .viewEarth,
               schoolOfMagic: .earth,
            level: .one,
            context: .adventureMap(selection: .none, duration: .instant),
               generalDescription: "Shows the spots of interest on the view world screen",
               basicEffectDescription: "Displays the location of all loose resources on the view world screen.",
               advancedEffectDescription: "Displays the location of all mines and loose resources on the view world screen.",
               expertEffectDescription: "Displays the entire terrain, all mines and loose resources on the view world screen."
           )
       )
      
    
    // MARK: Level 2
    
    /// Damages all living creature
    ///
    /// Death ripple can only appear in necropolis' mage guild. Additionally, it can be learned
    /// from shrine of magic gesture or scholar.
    ///
    /// # Specialization
    /// Heroes specializing in Death Ripple
    /// - Septienna the Necromancer
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Green and Gold Dragon
    /// - Red and Black Dragon
    /// - Magic Elemental
    /// - Azure Dragon
    /// - *All Undead* creatures
    ///
    /// # Starts with spell
    /// - Septienna the Necromancer
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Death_Ripple
    ///
    static let deathRipple = Self.init(
        cost: .init(normal: 10, reduced: 8),

        effect: .init(
            name: .deathRipple,
            schoolOfMagic: .earth,
            level: .two,
            context: .battle(selection: .target(.always(.alliedOrEnemy)), duration: .instant),
            generalDescription: "Damages all living creature",
            basicEffectDescription: "All creatures (except undead) troops take (10 + (power x 5)) damage",
            advancedEffectDescription: "All creatures (except undead) troops take (20 + (power x 5)) damage.",
            expertEffectDescription: "All creatures (except undead) troops take (30 + (power x 5)) damage."
        )
    )
    
    /// Places quicksand pits randomly in combat field hexes
    ///
    /// They are invisible to enemy hero, unless the hero has a creature fighting on native terrain.
    /// A creature stack that tries to move through a hex with quicksand pit is halted and cannot act
    /// until next round. Once a pit is stepped on, it is revealed for all to see. A unique property
    /// of the Quicksand spell is that it lasts infinitely during any battle, regardless of the
    /// power of the spell caster.
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Death_Ripple
    ///
    static let quicksand = Self.init(
        cost: .init(normal: 8, reduced: 6),

        effect: .init(
            name: .quicksand,
            schoolOfMagic: .earth,
            level: .two,
            context: .battle(selection: .target(.always(.none)), duration: .untilEndOfBattle),
            generalDescription: "Places quicksand pits randomly in combat field hexes",
            basicEffectDescription: "Quicksand pits are placed in 4 random hexes.",
            advancedEffectDescription: "Quicksand pits are placed in 6 random hexes.",
            expertEffectDescription: "Quicksand pits are placed in 8 random hexes"
        )
    )
    

 // MARK: Level 3
    
    /// *Permanently* reanimates killed undead, allied units similar to Resurrection spell.
    ///
    /// However, unlike Resurrection, the effect is *always permanent* regardless of whether
    /// the hero has Earth Magic or on what level it is.
    ///
    /// # Specialization
    /// Heroes specializing in Death Ripple
    /// - Thant the Necromancer
    ///
    /// # Starts with spell
    /// - Thant the Necromancer
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Animate_Dead
    ///
    static let animateDead = Self.init(
        cost: .init(normal: 15, reduced: 12),

        effect: .init(
            name: .animateDead,
            schoolOfMagic: .earth,
            level: .three,
            context: .battle(selection: .target(.always(.allied)), duration: .permanent),
            generalDescription: "Permanently reanimates killed undead, allied units similar to Resurrection spell",
            basicEffectDescription: "Reanimates (30 + (power × 50)) health points worth of killed undead creatures in target, allied troop.",
            advancedEffectDescription: "Reanimates (60 + (power × 50)) health points worth of killed undead creatures in target, allied troop.",
            expertEffectDescription: "Reanimates (160 + (power × 50)) health points worth of killed undead creatures in target, allied troop."
        )
    )
    
    /// Makes the target, allied troop immune to spells below certain level. Additionally,
    /// it removes negative spell effects (e.g. curse) but not positive spell effects (e.g. bless).
    ///
    /// The only spell powerful enough to pierce through the `Anti-magic` spell's protection is `Dispel`.
    ///
    /// # Casting Units
    /// Units capable of casting this spell:
    /// - Master genies (Random)
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Green and Gold Dragon
    /// - Red and Black Dragon
    /// - Magic Elemental
    /// - Azure Dragon
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Anti-Magic
    ///
    static let antiMagic = Self.init(
        cost: .init(normal: 15, reduced: 12),

        effect: .init(
            name: .antiMagic,
            schoolOfMagic: .earth,
            level: .one,
            context: .battle(selection: .target(.always(.allied)), duration: .oneRoundPerHeroPower),
            generalDescription: "makes the target, allied troop immune to spells below certain level. Additionally, it removes negative spell effects (e.g. curse) but not positive spell effects (e.g. bless).",
            basicEffectDescription: "Target, allied troop can only be affected by level 4 or 5 spells.",
            advancedEffectDescription: "Target, allied troop can only be affected by level 5 spells.",
            expertEffectDescription: "Target, allied troop can only be affected by level 5 spells."
        )
    )
    
    /// Does one point of damage to random castle walls and/or arrow towers.    /// - Azure Dragon
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Earthquake
    ///
    static let earthquake = Self.init(
        cost: .init(normal: 20, reduced: 17),

        effect: .init(
            name: .earthquake,
            schoolOfMagic: .earth,
            level: .three,
            context: .battle(selection: .target(.always(.none)), duration: .instant),
            generalDescription: "Does one point of damage to random castle walls and/or arrow towers.",
            basicEffectDescription: "Does one point of damage to two random castle walls during siege combat.",
            advancedEffectDescription: "Does one point of damage to three random castle walls during siege combat.",
            expertEffectDescription: "Does one point of damage to four random castle walls during siege combat."
        )
    )
    
    /// Creates an impassable wall, that can only be removed by expert remove obstacle or expert dispel
    ///
    /// It should be noted, that the duration of force field is always two rounds. It can not be increased
    /// with spell power or artifacts (Ring, Collar or Cape of Conjuring).
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Force_Field
    ///
    static let forceField = Self.init(
        cost: .init(normal: 12, reduced: 9),

        effect: .init(
            name: .forceField,
            schoolOfMagic: .earth,
            level: .three,
            context: .battle(selection: .target(.always(.battlefieldTile)), duration: .twoRounds),
            generalDescription: "Creates an impassable wall, that can only be removed by expert remove obstacle or expert dispel",
            basicEffectDescription: "A two hex-wide force wall is created at target hex. Movement through these hexes is blocked.",
            advancedEffectDescription: "Same as basic effect, except the force wall is three hexes wide.",
            expertEffectDescription: "Same as advanced effect"
        )
    )
    
    /// Reduces damage from earth magic spells
    ///
    /// # Casting Units
    /// Units capable of casting this spell:
    /// - Magma Elementals
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Green and Gold Dragon
    /// - Red and Black Dragon
    /// - Air and Storm Elementals
    /// - Magic Elemental
    /// - Azure Dragon
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Protection_from_Earth
    ///
    static let protectionFromEarth = Self.init(
        cost: .init(normal: 12, reduced: 9),

        effect: .init(
            name: .protectionFromEarth,
            schoolOfMagic: .earth,
            level: .three,
            context: .battle(.massBeneficial),
            generalDescription: "Reduces damage from earth magic spells",
            basicEffectDescription: "Damage from earth magic spells is reduced by 30% for target, allied troop.",
            advancedEffectDescription: "Damage from earth magic spells is reduced by 50% for target, allied troop.",
            expertEffectDescription: "Damage from earth magic spells is reduced by 50% for all allied troops."
        )
    )
    
    // MARK: Level 4
    
    /// Inflicts damage to all creatures in target hex and all adjacent hexes
    ///
    /// # Specialization
    /// Heroes specializing in Meteor Shower
    /// - Aislinn the Necromancer
    /// - Deemer the Warlock
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Gold Dragon
    /// - Black Dragon
    /// - Air and Storm Elementals
    /// - Magic Elemental
    ///
    /// # Vulnerability
    /// Units vulnerable to its effects:
    /// - Earth and Magma Elementals
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Meteor_Shower
    ///
    static let meteorShower = Self.init(
        cost: .init(normal: 16, reduced: 12),

        effect: .init(
            name: .meteorShower,
            schoolOfMagic: .earth,
            level: .four,
            context: .battle(selection: .target(.always(.multiTileHittingEnemies)), duration: .instant),
            generalDescription: "Inflicts damage to all creatures in target hex and all adjacent hexes",
            basicEffectDescription: "Troops in target hex and adjacent hexes take (25 + (power x 25)) damage.",
            advancedEffectDescription: "Troops in target hex and adjacent hexes take (50 + (power x 25)) damage.",
            expertEffectDescription: "Troops in target hex and adjacent hexes take (100 + (power x 25)) damage."
        )
    )
    
    /// Resurrects dead creatures in target allied
    ///
    /// Resurrection does not work on undead, elementals, gargoyles, golems, Black Dragons, Gold Dragons or war machines.
    ///
    ///
    /// # Specialization
    /// Heroes specializing in Meteor Shower
    /// - Alamar the Warlock
    /// - Jeddite the Warlock
    ///
    /// # Casting Units
    /// Units capable of casting this spell:
    /// - Archangel (but always 100 HP/Angel and effect is *always permanent*)
    ///
    /// # Tactics
    /// Resurrection is one the most powerful spells in the game. Using it together with Expert Earth Magic and Intelligence,
    /// a hero can basically resurrect their entire army if successful with the Blind spell. Interestingly enough, the spell
    /// does not work on undead but can still appear in mage guilds of Necropolis.
    ///
    /// Resurrected creatures are only permanent if casted with Advanced or Expert Earth Magic.
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Resurrection
    ///
    static let resurrection = Self.init(
        cost: .init(normal: 20, reduced: 16),

        effect: .init(
            name: .resurrection,
            schoolOfMagic: .earth,
            level: .four,
            context: .battle(
                selection: .target(.always(.allied)),
                duration: .dependingOnSkillLevel(
                    basic: .untilEndOfBattle,
                    advanced: .permanent,
                expert: .permanent
            )),
            generalDescription: "Resurrects dead creatures in target allied",
            basicEffectDescription: "Target, allied troop with dead creatures has (40 + (power x 50)) health worth of creatures restored to life for the duration of the current battle.",
            advancedEffectDescription: "Same as basic effect, except that (80 + (power x 50)) health worth of creatures are restored permanently.",
            expertEffectDescription: "Same as advanced effect, except that (160 + (power x 50)) health worth of creatures are restored."
        )
    )
    
    static let sorrow = Self.init(
           cost: .init(normal: <#T##Cost.Value#>, reduced: <#T##Cost.Value#>),

           effect: .init(
               name: .sorrow,
               schoolOfMagic: .earth,
               level: <#T##Level#>,
               context: ,
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
               schoolOfMagic: .earth,
               level: <#T##Level#>,
               context: ,
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
                schoolOfMagic: .earth,
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
                schoolOfMagic: .earth,
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
