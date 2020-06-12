//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    enum Name: String, Hashable, Codable {
        
        // MARK: ALL SCHOOLS
        
        /// Level 1 magic spell, together with "Visions" (lvl 2) they are the only spells in the game
        /// that are part of every magic shool.
        case magicArrow
        
        /// Level 2 magic spell, together with "Magic Arrow" (lvl 1) they are the only spells in the game
        /// that are part of every magic shool.
        case visions
        
        // MARK: - AIR MAGIC -
        // ====================
        // ====================
        // ====================
        // MARK: Level 1
        case haste
        case viewAir
        
        // MARK: Level 2
        case disguise
        case disruptingRay
        case fortune
        case lightningBolt
        case precision
        case protectionFromAir
        
        // MARK: Level 3
        case airShield
        case destroyUndead
        case hypnotize
        
        // MARK: Level 4
        case chainLightning
        case counterstrike
        
        // MARK: Level 5
        case dimensionDoor
        case fly
        case magicMirror
        case summonAirElementals
        
        /// HoMM3 "Shadow of Death" spell that requires combination artifact "Titan's Thunder"
        case titansLightningBolt
        
        // MARK: - EARTH MAGIC -
        // ====================
        // ====================
        // ====================
        // MARK: Level 1
        case shield
        case slow
        case stoneSkin
        case viewEarth
        
        // MARK: Level 2
        case deathRipple
        case quicksand
        
        // MARK: Level 3
        case animateDead
        case antiMagic
        case earthQuake
        case forceField
        case protectionFromEarth
        
        // MARK: Level 4
        case meteorShower
        case resurrection
        case sorrow
        case townPortal

        // MARK: Level 5
        case implosion
        case summonEarthElemental
        
        // MARK: - FIRE MAGIC -
        // ====================
        // ====================
        // ====================
        // MARK: Level 1
        case bloodlust
        case curse
        case protectionFromFire
        
        // MARK: Level 2
        case blind
        case fireWall
        
        // MARK: Level 3
        case fireball
        case landMine
        case misfortune
        
        // MARK: Level 4
        case armageddon
        case berserk
        case fireShield
        case frenzy
        case inferno
        case slayer
        
        // MARK: Level 5
        case sacrifice
        case summonFireElemental
        
        // MARK: - WATER MAGIC -
        // ====================
        // ====================
        // ====================
        // MARK: Level 1
        case bless
        case cure
        case dispell
        case protectionFromWater
        case summonBoat

        // MARK: Level 2
        case iceBolt
        case removeObstacle
        case scuttleBoat
        case weakness
        
        // MARK: Level 3
        case forgetfulness
        case frostRing
        case mirth
        case teleport
        
        // MARK: Level 4
        case clone
        case prayer
        case waterWalk
        
        // MARK: Level 5
        case summonWaterElemental
    }
}
