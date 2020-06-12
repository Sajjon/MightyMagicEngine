//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import XCTest
@testable import MightyMagicEngine

final class SpellCastingTest: XCTestCase {
    
    // MARK: Failure
    func test_assert_hero_without_spellbook_cannot_cast_spells() throws {
        let cragHack = Hero(name: "Crag Hack", knowledge: 0)
        
        XCTAssertThrowsSpecificError(
            try cragHack.cast(spell: .dimensionDoor),
            expectedError: SpellCastingFailure.heroHasNoSpellBook,
            "Crag Hack has no spell book and should not be able to cast spells."
        )
    }
    
    func test_assert_hero_cannot_cast_spell_not_in_spellbook() throws {
        let cragHack = Hero(name: "Crag Hack", knowledge: 0, spellBook: SpellBook())
        
        XCTAssertThrowsSpecificError(
            try cragHack.cast(spell: .dimensionDoor),
            expectedError: SpellCastingFailure.notInSpellBook,
            "Crag Hack's spell book is empty."
        )
    }
    
    func test_assert_hero_cannot_cast_spell_with_not_enough_mana() throws {
        let solmyr = Hero(name: "Solmyr", knowledge: 0, spellBook: SpellBook([.dimensionDoor]))
        XCTAssertThrowsSpecificError(
            try solmyr.cast(spell: .dimensionDoor),
            expectedError: SpellCastingFailure.notEnoughMana(required: Spell.dimensionDoor.cost.normal, butHeroOnlyHas: 0),
            "Crag Hack's spell book is empty."
        )
    }
    
    
    
    // MARK: Success
    func test_assert_heros_mana_decreases_after_spell_cast() throws {
        let solmyr = Hero(name: "Solmyr", knowledge: 3, spellBook: SpellBook([.dimensionDoor]))
        let spellCost = try solmyr.costOfCasting(spell: .dimensionDoor)
        XCTAssertEqual(solmyr.mana, 30)
        try solmyr.cast(spell: .dimensionDoor)
        XCTAssertEqual(solmyr.mana, 30 - spellCost)
    }
    
    
}
