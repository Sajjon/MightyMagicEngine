import XCTest
@testable import MightyMagicEngine


final class BattleSpellCastingTests: XCTestCase {
    
    func test_assert_hero_cannot_cast_spells_on_cursed_ground_in_combat() throws {
        let solmyr = Hero(name: "Solmyr", knowledge: 3, spellBook: SpellBook([.landMine]))
        let attacker = try Army(hero: solmyr, creatureStacks: [CreatureStack()])

        let target = CreatureStack()
        let defender = try Army(creatureStacks: [target])

        let battle = Battle(
            attacker: attacker,
            defender: defender,
            field: .init(terrain: .cursedGround)
        )

        XCTAssertThrowsSpecificError(
            try battle.hero(solmyr, castsSpell: .landMine),
            expectedError: SpellCastingFailure.terrainPreventsMagic,
            "Hero should not be able to cast spells on cursed ground."
        )
    }
    
    func test_assert_hero_cannot_cast_adventure_map_spells_in_combat() throws {
        let solmyr = Hero(name: "Solmyr", knowledge: 3, spellBook: SpellBook([.dimensionDoor]))
        let attacker = try Army(hero: solmyr, creatureStacks: [CreatureStack()])
        
        let target = CreatureStack()
        let defender = try Army(creatureStacks: [target])
        
        let battle = Battle(
            attacker: attacker,
            defender: defender
        )
        
        XCTAssertThrowsSpecificError(
            try battle.hero(solmyr, castsSpell: .dimensionDoor),
            expectedError: SpellCastingFailure.cannotCastAdventureMapSpellInCombat,
            "Dimenson door is an adventure map spell, that cannot be cast in combat"
        )
    }

    func test_assert_hero_cannot_blind_spell_at_nothing() throws {
        let solmyr = Hero(name: "Solmyr", knowledge: 3, spellBook: SpellBook([.blind]))
        let attacker = try Army(hero: solmyr, creatureStacks: [CreatureStack()])
        
        let target = CreatureStack()
        let defender = try Army(creatureStacks: [target])
        
        let battle = Battle(
            attacker: attacker,
            defender: defender
        )
        
        XCTAssertThrowsSpecificError(
            try battle.hero(solmyr, castsSpell: .blind),
            expectedError: SpellCastingFailure.combatSpellRequiresTargetButNoneWasGiven,
            "Must cast blind at an enemy target, but none was given"
        )
    }

}
