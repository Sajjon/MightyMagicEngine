//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-08.
//

import Foundation
import XCTest

@testable import MightyMagicEngine

final class SpellSchoolsTests: XCTestCase {
    func test_assert_air_magic_spells_collection_only_contains_earth_magic_spells() {
        XCTAssertFalse(Spell.airMagicSpells.isEmpty, "Should have many air magic spells")
    }
    
    func test_assert_earth_magic_spells_collection_only_contains_earth_magic_spells() {
        XCTAssertFalse(Spell.earthMagicSpells.isEmpty, "Should have many earth magic spells")
    }
}
