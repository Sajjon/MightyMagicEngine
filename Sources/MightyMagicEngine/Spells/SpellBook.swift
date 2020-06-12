//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

public final class SpellBook: Codable {
    
    public private(set) var spells: [Spell.Name]
    
    public init(_ spells: [Spell.Name] = []) {
        self.spells = spells
    }
}
