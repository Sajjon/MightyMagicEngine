//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-09.
//

import Foundation
import XCTest
@testable import MightyMagicEngine

final class HeroStatsTests: XCTestCase {
    
    func test_assert_10_mana_per_knowledge() {
        XCTAssertEqual(Hero.manaPerKnowledge, 10)
    }
    
    
    func test_assert_hero_starts_with_correct_spell_points_given_non_zero_knowledge() throws {
        let solmyr = Hero(name: "Solmyr", knowledge: 3)
        XCTAssertEqual(solmyr.mana, 30)
    }
    
    func test_assert_hero_starts_with_correct_spell_points_given_zero_knowledge() throws {
        let cragHack = Hero(name: "Crag Hack", knowledge: 0, spellBook: SpellBook())
        
        XCTAssertEqual(cragHack.mana, 0)
    }
}
