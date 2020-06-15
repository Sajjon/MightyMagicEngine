//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

public final class Battle {
    
    public let attacker: Army
    public let defender: Army
    public let field: Field
    
    public init(attacker: Army, defender: Army, field: Field = .init()) {
        self.attacker = attacker
        self.defender = defender
        self.field = field
    }
}

// MARK: - Spell Casting
public extension Battle {
    func hero(_ hero: Hero, castsSpell spellName: Spell.Name, target: CreatureStack? = nil) throws {
        guard hero === actingArmy.hero else {
            throw Error.notThatHerosTurn
        }
        
        if terrain == .cursedGround {
            throw SpellCastingFailure.terrainPreventsMagic
        }
        
        let spell: Spell = Spell[spellName]
        
        guard spell.effect.context.isBattle else {
            throw SpellCastingFailure.cannotCastAdventureMapSpellInBattle
        }
  
        try hero.cast(spell: spellName, target: target)
    }

    enum Error: Swift.Error {
        case notThatHerosTurn
    }
}

// MARK: - Private
private extension Battle {
    var actingHero: Hero? {
        actingArmy.hero
    }
    
    var actingArmy: Army {
        warningDummyLogic(attacker)
    }
    
    var terrain: Terrain {
        field.terrain
    }
}
