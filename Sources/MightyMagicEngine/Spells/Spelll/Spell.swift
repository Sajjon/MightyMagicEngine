//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

public struct Spell: CaseIterable {
    public let cost: Cost
    public let effect: Effect
}

// MARK: Public
public extension Spell {
    var schoolOfMagic: MagicSchool { effect.schoolOfMagic }
    var name: Name { effect.name }
    
    func costGivenSkills(magicSkill: MagicSchoolSkillLevels) -> Cost.Value {
     
        
        switch effect.schoolOfMagic {
        case .allSchools:
            guard let maxLevel = magicSkill.maxLevelIgnoringSchool else {
                return cost.normal
            }
            switch cost.reduced {
            case .sameForAllLevels(let cost):
                return cost
            case .dependingOnLevel(let skillLevelDependent):
                return skillLevelDependent.costGivenMagicSchoolSkillLevel(maxLevel)
            }
        default: implementMe
        }
    }
}

