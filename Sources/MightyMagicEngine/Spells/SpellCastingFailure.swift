//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

public enum SpellCastingFailure: Swift.Error, Equatable {
    
    /// Your hero does not own any spell book and thus cannot cast any spells.
    ///
    /// N.B. this error should be guarded against using proper UI.
    case heroHasNoSpellBook
    
    /// Your hero does not have enough mana points to cast specified spell.
    ///
    /// N.B. this error should be guarded against using proper UI.
    case notEnoughMana(required: Hero.Mana, butHeroOnlyHas: Hero.Mana)
    
    /// The specified spell is not in your spell book.
    ///
    /// N.B. this error should be guarded against using proper UI.
    case notInSpellBook
    
    case cannotCastAdventureMapSpellInCombat
    
    case combatSpellRequiresTargetButNoneWasGiven
    
    case cannotCastCombatSpellOnAdventureMap
    
    /// You cannot cast the spell on this target creature because it has permanent
    /// resistens to either this particular effect/spell or to spell of level.
    case targetCreatureIsImmuneToSpell(TargetCreatureImmunity)
    
    /// "Dwarf kind" of magic resistency, where target creature has a change
    /// of blocking spells.
    case targetCreatureResistedSpell
    
    #if WakeOfGods
    /// Wog Only: Enemy was lucky to counter
    case enemyHeroCounteredSpell
    #endif
    
    /// Hero is standing on "Cursed Ground" terrain, which prevents spell casting.
    case terrainPreventsMagic
    
    /// The enemy hero you are in battle with is equipped with the artifact "Orb of inihibition", which prevents you from casting any spells..
    case enemyPreventsSpellCastingUsingArtifactOrbOfInhibition
}

public extension SpellCastingFailure {
    enum TargetCreatureImmunity: Equatable {
        case immuneToSpellsUpToLevel(Spell.Level)
        case specificallyImmuneToSpell(Spell.Name)
    }
}
