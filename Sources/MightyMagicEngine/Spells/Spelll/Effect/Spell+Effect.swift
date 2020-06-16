//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    struct Effect {
        
        /// Name of spell.
        public let name: Name
        
        /// Fire, earth, air, water, all spells except belongs to *one* school, except for `Magic Arrow`, which
        /// is the only spell in the world which belongs to all.
        public let schoolOfMagic: MagicSchool
        
        /// How powerful this spell is, level 1-5
        public let level: Level
        
        /// Battle or adventure map spell
        public let context: Context
        
        /// General description
        public let generalDescription: String
        
        /// Basic skill level effect description describes how the spell effect is upgraded when
        /// casting hero is schooled in the magic school of this spell at `basic` level.
        public let basicEffectDescription: String
        
        /// Advanced skill level effect description describes how the spell effect is upgraded when
        /// casting hero is schooled in the magic school of this spell at `advanced` level.
        public let advancedEffectDescription: String
        
        /// Expert skill level effect description describes how the spell effect is upgraded when
        /// casting hero is schooled in the magic school of this spell at `expert` level.
        public let expertEffectDescription: String
    }
}
