//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

extension Comparable where Self: RawRepresentable, RawValue: Comparable {
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}

public struct SecondarySkill: Equatable, Codable {
    public let name: Name
    public let level: Level
}

public extension SecondarySkill {
    enum Name: String, Equatable, Codable {
        case logistics
        case airMagic, earthMagic, fireMagic, waterMagic
    }
    
    enum Level: Int, Equatable, Codable, Comparable {
        case basic, advanced, expert
    }
}

public extension SecondarySkill.Name {
    static let magicSchoolSkills: [Self] = [.airMagic, .earthMagic, .fireMagic, .waterMagic]
    var isMagicSchoolSkill: Bool {
        Self.magicSchoolSkills.contains(self)
    }
}


// MARK: Spell Casting
public extension Hero {
    
    func skillLevelMatchingMagicSchool(ofSpell spell: Spell) -> SecondarySkill.Level? {
        func mapMagicSkillToSpellMagicSchool(skillNamed: SecondarySkill.Name) -> Spell.MagicSchool {
            switch skillNamed {
            case .airMagic: return .air
            case .earthMagic: return .earth
            case .fireMagic: return .fire
            case .waterMagic: return .water
            default: incorrectImplementation(message: "Skill should be a magic school skill, but incorrectly got: \(skillNamed)")
            }
        }

        let levelsOfSchools: [SecondarySkill.Level] = secondarySkills.filter { $0.key.isMagicSchoolSkill }
            .compactMap {
                let magicSchool = mapMagicSkillToSpellMagicSchool(skillNamed: $0.key)
                guard spell.schoolOfMagic.contains(magicSchool) else {
                    return nil
                }
                return $0.value.level
            }
        
        return levelsOfSchools.sorted().max()
    }
    
    func skilled(in skillName: SecondarySkill.Name) -> Bool {
        secondarySkills[skillName] != nil
    }
    
    func costOfCasting(spell spellName: Spell.Name) throws -> Spell.Cost.Value {
        guard let spellBook = self.spellBook else {
            throw SpellCastingFailure.heroHasNoSpellBook
        }
        guard spellBook.spells.contains(spellName) else {
            throw SpellCastingFailure.notInSpellBook
        }
        let spell = Spell[spellName]
        let cost = spell.costGivenSkills(magicSkill: self.magicSchoolSkillLevel)
        return cost
    }
    
    func cast(spell spellName: Spell.Name, target: CreatureStack? = nil) throws {
        let cost = try costOfCasting(spell: spellName)
        guard cost <= mana else {
            throw SpellCastingFailure.notEnoughMana(required: cost, butHeroOnlyHas: mana)
        }
        let spell = Spell[spellName]

        if spell.effect.context.requiresTarget(levels: self.magicSchoolSkillLevel), target == nil {
            throw SpellCastingFailure.combatSpellRequiresTargetButNoneWasGiven
        }
            
        self.mana -= cost
    }
}
