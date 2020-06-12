//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    struct Cost {
        
        /// Cost for heroes that haven't been tought in the magic school of the spell being casted.
        public let normal: Value
        
        /// Cost for heroes that have been tought in the magic school of the spell being casted.
        ///
        /// This reduced cost it the same for all tought heroes, independeny on their level of
        /// techings: `basic`, `advanced` or `expert` - which only affects the effect of the
        /// cast spell, not the cost.
        public let reduced: Value
    }
}

public extension Spell.Cost {
    
    typealias Value = Hero.Mana
    
    enum Reduced: ExpressibleByIntegerLiteral {
       case sameForAllLevels(Value)
        case dependingOnLevel(basic: Value, advanced: Value, expert: Value)
    }
}

public extension Spell.Cost.Reduced {
    typealias IntegerLiteralType = Value
    public init(integerLiteral value: IntegerLiteralType) {
        self = .sameForAllLevels(value)
    }
}
