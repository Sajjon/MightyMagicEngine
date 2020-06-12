//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

public final class Army: Codable {
    public let hero: Hero?
    public let creatureStacks: [CreatureStack]
    
    public init(hero: Hero? = nil, creatureStacks: [CreatureStack]) throws {
        if creatureStacks.isEmpty {
            throw Error.cannotBeEmpty
        }
        self.hero = hero
        self.creatureStacks = creatureStacks
    }
}

public extension Army {
    enum Error: String, Swift.Error, Equatable {
        case cannotBeEmpty
    }
}
