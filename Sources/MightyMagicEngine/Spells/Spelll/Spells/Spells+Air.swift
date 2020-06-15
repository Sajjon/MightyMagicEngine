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
    
    /// Increases speed of target allied creature stack
    static let haste = Self.init(
        cost: .init(normal: 6, reduced: 5),

        effect: .init(
            name: .haste,
            schoolOfMagic: .air,
            level: .one,
            context: .battle(.massBeneficial),
            generalDescription: "Increases speed of target allied creature stack",
            basicEffectDescription: "Target, allied troop's speed is increased by three hexes/turn.",
            advancedEffectDescription: "Target, allied troop's speed is increased by five hexes/turn.",
            expertEffectDescription: "All allied troops' speed is increased by five hexes/turn."
        )
    )
    
    /// Displays noteworthy locations on the view world screen
    static let viewAir = Self.init(
        cost: .init(normal: 2, reduced: 1),

        effect: .init(
            name: .viewAir,
            schoolOfMagic: .air,
            level: .one,
            context: .adventureMap(selection: .none, duration: .instant)
            generalDescription: "Displays noteworthy locations on the view world screen",
            basicEffectDescription: "Displays the location of all artifacts on the view world screen",
            advancedEffectDescription: "Displays the location of all artifacts and heroes on the view world screen.",
            expertEffectDescription: "Displays the location of all artifacts, heroes and towns."
        )
    )
    
    // MARK: Level 2
    
    /// Masks the hero's units on the adventure map from enemy players.
    static let disguise = Self.init(
        cost: .init(normal: 4, reduced: 2),

        effect: .init(
            name: .disguise,
            schoolOfMagic: .air,
            level: .two,
            context: .adventureMap(selection: .none, duration: .oneDay),
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
            context: .battle(
                selection: .target(.always(.enemy)),
                duration: .untilEndOfBattle
            ),
            generalDescription: "Reduces target, enemy creature stack's defense",
            basicEffectDescription: "Reduces target, enemy troop's defense rating by 3.",
            advancedEffectDescription: "Reduces target, enemy troop's defense rating by 4.",
            expertEffectDescription: "Reduces target, enemy troop's defense rating by 5."
        )
    )
    
    /// Increases luck of target, allied creature(s).
    static let fortune = Self.init(
        cost: .init(normal: 7, reduced: 5),

        effect: .init(
            name: .fortune,
            schoolOfMagic: .air,
            level: .two,
            context: .battle(.massBeneficial),
            generalDescription: "increases luck of target, allied creature(s).",
            basicEffectDescription: "Increases luck of target, allied troop by 1.",
            advancedEffectDescription: "Increases luck of target, allied troop by 2.",
            expertEffectDescription: "Increases luck of all allied troops by 2."
        )
    )
    
    /// Casts a bolt on lightning on target enemy creature.
    static let lightningBolt = Self.init(
        cost: .init(normal: 10, reduced: 8),

        effect: .init(
            name: .lightningBolt,
            schoolOfMagic: .air,
            level: .two,
            context: .battle(.damageInflicting),
            generalDescription: "Casts a bolt on lightning on target enemy creature.",
            basicEffectDescription: "Target, enemy creature receives (10 + (power x 25)) damage.",
            advancedEffectDescription: "Target, enemy creature receives (20 + (power x 25)) damage.",
            expertEffectDescription: "Target, enemy creature receives (50 + (power x 25)) damage."
        )
    )
    
    /// Increases attack skill of target allied ranged creature.
    ///
    /// # Specialization
    /// Heroes specializing in Precision
    /// - Zubin the Battle Mage
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Precision
    ///
    static let precision = Self.init(
        cost: .init(normal: 8, reduced: 6),

        effect: .init(
            name: .precision,
            schoolOfMagic: .air,
            level: .two,
            context: .battle(.massBeneficial),
            generalDescription: "Increases attack skill of target allied ranged creature.",
            basicEffectDescription: "Target, allied troop with ranged attack has its attack rating increased by 3 when making ranged attacks.",
            advancedEffectDescription: "Target, allied troop with ranged attack has its attack rating increased by 6 when making ranged attacks.",
            expertEffectDescription: "All allied troops with ranged attack have their attack rating increased by 6 when making ranged attacks."
        )
    )
    
    /// Reduces the damage target allied creature takes from spells in the school of air magic.
    static let protectionFromAir = Self.init(
        cost: .init(normal: 7, reduced: 5),

        effect: .init(
            name: .protectionFromAir,
            schoolOfMagic: .air,
            level: .two,
            context: .battle(.massBeneficial),
            generalDescription: "Reduces the damage target allied creature takes from spells in the school of air magic.",
            basicEffectDescription: "Damage from air magic spells is reduced by 30% for target, allied troop.",
            advancedEffectDescription: "Damage from air magic spells is reduced by 50% for target, allied troop.",
            expertEffectDescription: "Damage from air magic spells is reduced by 50% for all allied troops."
        )
    )
    
    // MARK: Level 3

    /// Reduces the amount of damage allied troops receive from enemy's ranged attacks.
    ///
    /// # Immunity
    /// Creatures immune to Air Shield
    /// - Green and Gold Dragons
    /// - Red and Black Dragons
    /// - Magic Elemental
    /// - Azure Dragon
    ///
    /// # Specialization
    /// Heroes specializing in Air Shield
    /// - Dargem the Navigator (HotA)
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Air_Shield
    ///
    static let airShield = Self.init(
        cost: .init(normal: 12, reduced: 9),

        effect: .init(
            name: .airShield,
            schoolOfMagic: .air,
            level: .three,
            context: .battle(.massBeneficial),
            generalDescription: "Reduces the amount of damage allied troops receive from enemy's ranged attacks.",
            basicEffectDescription: "Target, allied troop takes 25% less damage from ranged attacks.",
            advancedEffectDescription: "Target, allied troop takes 50% less damage from ranged attacks.",
            expertEffectDescription: "All allied troops takes 50% less damage from ranged attacks."
        )
    )
    
    /// Causes damage to all undead creatures on the battlefield - including the caster's troops.
    ///
    /// # Immunity
    /// All non-undead creatures are naturally immune to the spell. Additionally, artifact
    /// `Pendant of Death` can make undead troops immune to the spell. If all the creatures
    /// on the battlefield are immune to the `Destroy Undead` spell, it can not be cast.
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Destroy_Undead
    ///
    static let destroyUndead = Self.init(
        cost: .init(normal: 15, reduced: 12),

        effect: .init(
            name: .destroyUndead,
            schoolOfMagic: .air,
            level: .three,
            context: .battle(.damageInflicting),
            generalDescription: "Causes damage to all undead creatures on the battlefield - including the caster's troops.",
            basicEffectDescription: "All undead creature troops receive ((power x 10) + 10) damage.",
            advancedEffectDescription: "All undead creature troops receive ((power x 10) + 20) damage.",
            expertEffectDescription: "All undead creature troops receive ((power x 10) + 50) damage."
        )
    )
    
    /// Puts an enemy under the spell caster's control and are therefore counted as an allied unit.
    ///
    /// Although the spell description says the hypnotized troop can be attacked without fear of
    /// retaliation, this is not true: the unit retaliates as normal. The hypnotized unit does
    /// not block enemy shooters.
    ///
    /// # Specialization
    /// Heroes specializing in Hypnotize
    /// - Astral the Wizard
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - All units immune to mind spells.
    ///
    /// Artifacts that render units immune to Hypnotize:
    /// - `Pendant of Free Will`
    /// - `Badge of Courage Badge of Courage` (not in HotA)
    ///
    /// # Casting Units
    /// Units capable of casting this spell:
    /// - Fangarm: (advanced level) (HotA)
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Hypnotize
    ///
    static let hypnotize = Self.init(
        cost: .init(normal: 18, reduced: 15),

        effect: .init(
            name: .hypnotize,
            schoolOfMagic: .air,
            level: .three,
            context: .battle(selection: .target(.always(.enemy)), duration: .oneRoundPerHeroPower),
            generalDescription: "Puts an enemy under the spell caster's control",
            basicEffectDescription: "Target, enemy troop of less than (10 + (power x 25)) health is put under your control",
            advancedEffectDescription: "Target, enemy troop of less than (20 + (power x 25)) health is put under your control.",
            expertEffectDescription: "Target, enemy troop of less than (50 + (power x 25)) health is put under your control."
        )
    )
    
    // MARK: Level 4
    
    /// Strikes up to four or five creature stacks causing full damage for the initial target,
    /// and halving for each target after that.
    ///
    /// The closest creature stack to the initial target becomes the second target of the spell
    /// whether it is a friend or a foe, and this method repeats itself for all the spell's
    /// targets. However, the same creature stack cannot be targeted twice. If two or more
    /// targets are at the equal distance from previous target, then the stack is *randomly* chosen.
    /// If the spell is resisted after it has already struck at least one target, it will
    /// continue arcing to the next target.
    ///
    /// *In total*, this spell deals up to an *aggregated damage* of (46 + power x 75) on `basic` level,
    /// (96 + power x 77.5) on `advanced` level and
    /// (193 + power x 77.5) with `expert` air magic.
    ///
    /// # Specialization
    /// Heroes specializing in Chain Lightning
    /// - Solmyr the Wizard
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Gold Dragon
    /// - Black Dragon
    /// - Earth and Magma Elementals
    /// - Magic Elemental
    ///
    /// Artifacts that render units immune to Chain Lightning:
    /// - `Pendant of Negativity`
    ///
    /// # Vulnerability
    /// Units vulnerable to its effects:
    /// - Air and Storm Elementals
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Chain_Lightning
    ///
    static let chainLightning = Self.init(
        cost: .init(normal: 24, reduced: 20),

        effect: .init(
            name: .chainLightning,
            schoolOfMagic: .air,
            level: .four,
            context: .battle(.damageInflicting),
            generalDescription: "strikes up to four or five creature stacks causing full damage for the initial target, and halving for each target after that",
            basicEffectDescription: "Lightning bolt strikes target troop for (25 + (power x 40)) damage. Bolt strikes four troops.",
            advancedEffectDescription: "Lightning bolt strikes target troop for (50 + (power x 40)) damage. Bolt strikes five troops.",
            expertEffectDescription: "Lightning bolt strikes target troop for (100 + (power x 40)) damage. Bolt strikes five troops."
        )
    )
    
    /// Enables allied troops to retaliate extra times.
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Royal Griffin (Counterstrike can be cast on Royal Griffin, but it's a
    /// waste, since they already have unlimited retaliations)
    /// - Gold Dragon
    /// - Black Dragon
    /// - Magic Elemental
    /// - Fangarm (HotA) (Counterstrike can be cast on Fangarms, but it's a
    /// waste, since they already have unlimited retaliations.)
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Counterstrike
    ///
    static let counterstrike = Self.init(
        cost: .init(normal: 24, reduced: 20),

        effect: .init(
            name: .counterstrike,
            schoolOfMagic: .air,
            level: .four,
            context: .battle(selection: .massBeneficial, duration: .oneRoundPerHeroPower),
            generalDescription: "Enables allied troops to retaliate extra times",
            basicEffectDescription: "Target, allied troop can retaliate against one additional attack per round.",
            advancedEffectDescription: "Target, allied troop can retaliate against two additional attacks per round.",
            expertEffectDescription: "All allied troops can retaliate against two additional attacks per round."
        )
    )
    
    // MARK: Level 5
    
    /// Teleport's spell casting hero to a visible, unoccupied location on the adventure map
    ///
    ///  If the movement reduction reduces movement to zero or below, the spell may not be cast.
    ///  The radius of the spell is 9 squares in any direction, diagonal movement included.
    ///
    /// If the destination of the spell is invalid, for example water or shoreline, the spell
    /// fails and the attempt is lost along with the mana and movement points. Other invalid
    /// destinations, such as those already containing objects, will cause the dimension door
    /// targeting cursor to change back to the arrow cursor; this can provide the player with
    /// limited information about the territory concealed by the shroud. Additionally,
    /// dimension door can be cast if the hero is in a boat, and the effects of the invalid
    /// location are the same, except the hero can not teleport to dry land.
    ///
    /// Although the manual (and infobox on the right) states that Dimension Door can only
    /// teleport hero to a visible location, this is not true. A hero can transfer onto a
    /// shrouded square with Dimension Door provided that the square is unoccupied.
    ///
    /// Like with monoliths, a hero can travel to an unoccupied square next to a wandering
    /// monster stack without engaging in combat. A hero may pick up nearby objects from
    /// adjacent squares without causing wandering monsters to attack. In other words,
    /// a hero can turn within the square but if the hero tries to move to a square adjacent
    /// to the monster stack, combat will ensue.
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Dimension_Door
    ///
    static let dimensionDoor = Self(
        cost: .init(normal: 25, reduced: 20),
        
        effect: .init(
            name: .dimensionDoor,
            schoolOfMagic: .air,
            level: .five,
            context: .adventureMap(selection: .unoccupiedTileReachableByHero, duration: .instant),
            generalDescription: "Once per day, you may teleport your hero to a visible, unoccupied location on the adventure map.",
            basicEffectDescription: "Teleports hero to a selected (unoccupied and visible) location on the adventure map. The spell may be cast twice per day and reduces the hero's movement by three tiles for each casting.",
            advancedEffectDescription: "Same as Basic Effect, except the spell may be cast three times in a day.",
            expertEffectDescription: "Same as Advanced Effect, except the spell may be cast four times in a day, and movement allowance is reduced by two tiles."
        )
    )
    
    
    /// Allows casting hero to fly over terrain (except rock) obstacles to an unoccupied map location
    ///
    /// Cannot be used by a hero on a boat.
    ///
    /// # Movepoints consumption
    ///     |-----------|----------------------|--------------|--------------|--------------|
    ///     |           |                      |              |              |              |
    ///     |           |           F L Y      | + Basic      | +Advanced    | +Expert      |
    ///     |           |                      | Pathfinding  | Pathfinding  | Pathfinding  |
    ///     |           |-------|------|-------|------|-------|------|-------|------|-------|
    ///     | Terrain   | Air   | Ste. | Diag. | Str. | Diag. | Str. | Diag. | Str. | Diag. |
    ///     |           | Magic | Move | Move  | Move | Move  | Move | Move  | Move | Move  |
    ///     |-----------|-------|------|-------|------|-------|------|-------|------|-------|
    ///     |           | bas:  | 140  | 197   | 140  | 197   | 125  | 176   |      |       |
    ///     |  Swamp    | adv:  | 120  | 169   | 120  | 169   | 120  | 169   | 100  |  141  |
    ///     |           | exp:  | 100  | 141   | 100  | 141   | 100  | 141   |      |       |
    ///     |-------------------------------------------------------------------------------|
    ///     |  Sand     | bas:  | 140  | 197   | 125  | 176   |      |       |      |       |
    ///     |   &       | adv:  | 120  | 169   | 120  | 169   | 100  |  141  | 100  |  141  |
    ///     |  Snow     | exp:  | 100  | 141   | 100  | 141   |      |       |      |       |
    ///     |-------------------------------------------------------------------------------|
    ///     |  Rough    | bas:  | 125  | 176   |      |       |      |       |      |       |
    ///     |   &       | adv:  | 120  | 169   | 100  |  141  | 100  |  141  | 100  |  141  |
    ///     | Wasteland | exp:  | 100  | 141   |      |       |      |       |      |       |
    ///     |-------------------------------------------------------------------------------|
    ///     | Impassable| bas:  | 140  | 197   |                                            |
    ///     |   &       | adv:  | 120  | 169   |          N O T   A F F E C T E D           |
    ///     | Water     | exp:  | 100  | 141   |                                            |
    ///     |-------------------------------------------------------------------------------|
    ///     | Dirt      |       |      |       |                                            |
    ///     | Grass     |       |      |       |                                            |
    ///     | Lava      |       | 100  |  141  |          N O T   A F F E C T E D           |
    ///     | Subterran.|       |      |       |                                            |
    ///     | Highlands |       |      |       |                                            |
    ///     |-------------------------------------------------------------------------------|
    ///     | Dirt road |       | 75   | 106   |          N O T   A F F E C T E D           |
    ///     |-------------------------------------------------------------------------------|
    ///     | Grav.road |       | 65   |  91   |          N O T   A F F E C T E D           |
    ///     |-------------------------------------------------------------------------------|
    ///     | Cobb road |       | 50   |  70   |          N O T   A F F E C T E D           |
    ///     |-------------------------------------------------------------------------------|
    ///
    /// # Related Artifacts
    /// - Angel Wings - gives expert Fly while equipped
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Fly
    ///
    static let fly = Self.init(
        cost: .init(normal: 20, reduced: 15),

        effect: .init(
            name: .fly,
            schoolOfMagic: .air,
            level: .five,
            context: .adventureMap(selection: .none, duration: .oneDay),
            generalDescription: "Allows casting hero to fly over terrain (except rock) obstacles to an unoccupied map location.",
            basicEffectDescription: "Distance traveled may be up to 60% of normal movement.",
            advancedEffectDescription: "Distance traveled may be up to 80% of normal movement.",
            expertEffectDescription: "Distance traveled may be up to 100% of normal movement."
        )
    )
    
    /// Causes enemy spells cast on target allied troop to have a chance to be redirected to a random enemy troop.
    ///
    /// In Shadow of Death, Faerie Dragons have Magic Mirror affecting on them as a special ability.
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Black Dragon
    /// - Magic Elemental
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Magic_Mirror
    ///
    static let magicMirror = Self.init(
        cost: .init(normal: 25, reduced: 20),

        effect: .init(
            name: .magicMirror,
            schoolOfMagic: .air,
            level: .five,
            context: .battle(selection: .target(.always(.allied)), duration: .oneRoundPerHeroPower),
            generalDescription: "Causes enemy spells cast on target allied troop to have a chance to be redirected to a random enemy troop.",
            basicEffectDescription: "Enemy spells cast on targeted, allied troop has a 20% chance of being redirected to a random enemy troop.",
            advancedEffectDescription: "Enemy spells cast on targeted, allied troop has a 30% chance of being redirected to a random enemy troop.",
            expertEffectDescription: "Enemy spells cast on targeted, allied troop has a 40% chance of being redirected to a random enemy troop."
        )
    )
    
    /// It summons a stack of Air Elementals on the first row of combat field; on casting hero's side
    static let summonAirElementals = Self.init(
        cost: .init(normal: 250, reduced: 20),

        effect: .init(
            name: .summonAirElementals,
            schoolOfMagic: .air,
            level: .five,
            context: .battle(selection: .target(.none), duration: .untilEndOfBattle),
            generalDescription: "It summons a stack of Air Elementals on the first row of combat field; on casting hero's side",
            basicEffectDescription: "Summons a troop of air elementals containing creatures amount of (power x 2).",
            advancedEffectDescription: "Summons a troop of air elementals containing creatures amount of (power x 3).",
            expertEffectDescription: "Summons a troop of air elementals containing creatures amount of (power x 4)."
        )
    )
    
    /// Has no (zero) casting cost and always does 600 points of damage regardless of hero's spell power or level of expertise in Air Magic.
    ///
    /// It was was introduced to Heroes of Might and Magic III in Shadow of Death expansion with the combination artifact Titan's Thunder.
    ///
    /// While the assembled artifact is equipped, Titan's Lightning bolt is set into hero's spell book. The spell has no (zero) casting
    /// cost and always does 600 points of damage regardless of hero's spell power or level of expertise in Air Magic.
    /// However, if the Orb of the Firmament is equipped, the damage is increased to 900 points.
    ///
    /// Earth and Magma Elementals are immune to Titan's Lightning Bolt, while Air and Storm Elementals are vulnerable to it.
    /// However, although Titan's Lightning Bolt appears to be a lightning-based spell, Pendant of Negativity does not make
    /// hero's creatures immune to it, as it does for example in the case of Lightning Bolt or Chain Lightning.
    ///
    /// # Immunity
    /// Units immune to its effects:
    /// - Black Dragon
    /// - Earth and Magma Elementals
    /// - Magic Elemental
    ///
    /// # Vulnerability
    /// Units vulnerable to its effects:
    /// - Air and Storm Elementals
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Titan%27s_Lightning_Bolt
    ///
    static let titansLightningBolt = Self.init(
        cost: .init(normal: 0, reduced: 0),

        effect: .init(
            name: .titansLightningBolt,
            schoolOfMagic: .air,
            level: .five,
            context: .battle(.damageInflicting),
            generalDescription: "Does 600 damage. Requires Titan's Thunder.",
            basicEffectDescription: "Does 600 damage. Requires Titan's Thunder.",
            advancedEffectDescription: "Does 600 damage. Requires Titan's Thunder",
            expertEffectDescription: "Does 600 damage. Requires Titan's Thunder."
        )
    )
}
