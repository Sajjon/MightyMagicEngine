//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-07.
//

import Foundation

public typealias Battlefield = Battle.Field

public extension Battle {
    struct Field {
        public let terrain: Terrain
        public init(terrain: Terrain = .grass) {
            self.terrain = terrain
        }
    }
}
