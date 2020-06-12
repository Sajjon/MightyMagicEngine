//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    
    typealias AllCases = [Self]
    static var allCases: [Self] {
        [Self.blind, Self.dimensionDoor]
    }
    
    static func filtered(school: MagicSchool? = nil, level: Spell.Level? = nil) -> [Self] {
        allCases
            .filter(require: \.schoolOfMagic, toEqual: school)
            .filter(require: \.effect.level, toEqual: level)
    }
    
    static var fireMagicSpells: [Self] {
        filtered(school: .fire)
    }
    
    static var airMagicSpells: [Self] {
        filtered(school: .air)
     }
    
    static var earthMagicSpells: [Self] {
        filtered(school: .earth)
    }
    
    static var waterMagicSpells: [Self] {
        filtered(school: .water)
    }
    
    static var levelOneSpells: [Self] {
        filtered(level: .one)
    }
    
    static var levelTwoSpells: [Self] {
        filtered(level: .two)
    }
    
    static var levelThreeSpells: [Self] {
         filtered(level: .three)
     }
    
    static var levelFourSpells: [Self] {
        filtered(level: .four)
    }
    
    static var levelFiveSpells: [Self] {
        filtered(level: .five)
    }
    
    static subscript(name: Name) -> Self {
        guard let spell = Self.allCases.first(where: { $0.name == name }) else {
            incorrectImplementation(shouldAlwaysBeAbleTo: "Find spell via name")
        }
        return spell
    }
}
