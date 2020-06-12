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
}
