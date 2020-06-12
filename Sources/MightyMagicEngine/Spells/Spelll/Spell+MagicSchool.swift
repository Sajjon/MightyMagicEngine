//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    
    
    struct MagicSchool: OptionSet, CaseIterable {
        public let rawValue: Int
        public init(rawValue: Int) {
            self.rawValue = rawValue
            assert(rawValue <= 16)
        }
        
        public static let air       = Self(rawValue: 1 << 0)
        public static let earth     = Self(rawValue: 1 << 1)
        public static let fire      = Self(rawValue: 1 << 2)
        public static let water     = Self(rawValue: 1 << 3)
        
        public typealias AllCases = [Self]
        
        /// Not to be confused with `allSchools` *being* a magic school type containing all other schools
        /// this is an array of the four schools
        public static let allCases: [Self] = [.air, .earth, .fire, .water]
        
        /// Not to be confused with `allCase` *being* an array of the four schools, this is
        /// a magic school type containing all other schools
        public static let allSchools: Self = [.air, .earth, .fire, .water]
    }
    
    
}
