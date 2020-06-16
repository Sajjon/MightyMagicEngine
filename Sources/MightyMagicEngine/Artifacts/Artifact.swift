//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-16.
//

import Foundation

internal extension Collection where Self.Element: Hashable {
    func toSet() -> Set<Element> {
        fatalError()
    }
    
    func countUnique() -> Int {
        toSet().count
    }
}

public struct Artifact {
    public let name: Name
    
    /// Combination artifact or just a single artifact
    public let artifactType: ArtifactType

    public let `class`: `Class`
    
    public init(
        name: Name,
         `class`: `Class`,
        type artifactTypeDefinition: ArtifactTypeDefinition
    ) {
        if case let .combination(artifacts, _) = artifactTypeDefinition {
            precondition(artifacts.map { $0.name }.countUnique() == artifacts.count)
        }
        self.name = name
        self.`class` = `class`
        self.artifactType = artifactTypeDefinition.artifactType
    }
    
    fileprivate init(
        name: Name,
        `class`: `Class`,
        slot: Slot
    ) {
        self.init(name: name, class: `class`, type: .single(equippedIn: slot))
    }
    
}

public extension Artifact {
    
    var isCombinationArtifact: Bool {
        switch artifactType {
        case .single: return false
        case .combination: return true
        }
    }
    
    var equippedInSlot: Slot {
        switch artifactType {
        case .single(let equippedInSlot): return equippedInSlot
        case .combination(_, let equippedInSlot, _): return equippedInSlot
        }
    }
    
    enum ArtifactTypeDefinition {
        case single(equippedIn: Slot)
        
        case combination(
            of: [Artifact],
            equippedIn: Slot
        )
    }
    
    enum ArtifactType {
        case single(equippedIn: Slot)
        
        case combination(
            of: [Artifact.Name],
            equippedIn: Slot,
            blocking: [Slot]
        )
    }
    
    /// Artifacts are split into 4 categories roughly rating their power and usefulness. The Class rating is not listed
    /// on the item in the game, but *it afflicts the chances to get an artifact* in creature banks and the strength of
    /// guarding units on adventure map. The map editor allows the placing of a random artifact by the certain
    /// class, allowing for creating a variation in that map from one play through to the next.
    ///
    /// The 4 classes are Treasure, Minor, Major, and Relic. Their AI values are 2000, 5000, 10000 and 20000
    /// respectively. Only Treasure class artifacts are used for quests by Seers at randomly generated maps,
    /// but the map maker can choose an artifact of any class for this.
    ///
    /// Spell scrolls have no class and their AI value is 500 for the 1st level spell scroll and 2000/3000/4000/5000 for 2nd/3rd/4th/5th levels.
    ///
    /// # More info
    /// See more info at [Heroes 3 wiki]
    ///
    /// [Heroes 3 wiki]: https://heroes.thelazy.net/index.php/Artifact#Class
    ///
    enum Class {
        /// The lowest rating class
        case treasure
        
        /// The second lowest rating class, better than `treasure`
        case minor
        
        /// The second highest rating class, not as powerful as `relic`, but still very good.
        case major
        
        /// The highest rating class, the most powerful artifacts are `relic`s.
        case relic
    }
    
    enum Slot: Int, Hashable {
        
        /// For helments / crowns and hats
        case head
        
        /// For necklaces / pendants / amulets
        case neck
        case weapon
        case torso
        case shield
        case ring
        case shoulders
        case cape
        case feet
        case miscellaneous
    }
    

    enum Name: String, Hashable {
        case bootsOfLeviatation
        case angelWings
        
        case pendantOfDeath
        case pendantOfFreeWill
        case pendantOfNegativity
        
        case badgeOfCourage
        
        case thunderHelmet
        case titansGladius
        case titansCuirass
        case sentinelsShield
        
        /// Combination Artifacts
        case titansThunder
    }
}

internal extension Artifact.ArtifactTypeDefinition {
    var artifactType: Artifact.ArtifactType {
        switch self {
        case .single(let equippedInSlot):
            return .single(equippedIn: equippedInSlot)
        case .combination(let artifactParts, let equippedInSlot):
            var blockedSlots = artifactParts.map { $0.equippedInSlot }
            precondition(blockedSlots.contains(equippedInSlot))
            blockedSlots.removeAll(where: { $0 == equippedInSlot })
            
            return .combination(
                of: artifactParts.map { $0.name },
                equippedIn: equippedInSlot,
                blocking: blockedSlots
            )
        }
    }

}

public extension Artifact {

    /// Artifact enabling Hero to walk on water, provided that she ends her turn on land.
    ///
    /// Worn on the feet, these boots put your hero under a permanent Expert [Water Walk spell](x-source-tag://Spell.waterWalk).
    ///
    /// - Tag: Artifact.bootsOfLeviatation
    ///
    static let bootsOfLeviatation = Self(
        name: .bootsOfLeviatation,
        class: .relic,
        slot: .feet
    )
    
    /// Gives `expert`  [Fly (spell)](x-source-tag://Spell.fly)
      ///
      /// Worn on the feet, these boots put your hero under a permanent Expert [Water Walk spell](x-source-tag://Spell.waterWalk).
      ///
      /// - Tag: Artifact.angelWings
      ///
      static let angelWings = Self(
        name: .angelWings,
        class: .relic,
        slot: .cape
    )
    
    /// Makes undead allied tropps immune to the [Destroy Undead Spell](x-source-tag://Spell.destroyUndead)
    ///
    /// - Tag: Artifact.pendantOfDeath
    ///
    static let pendantOfDeath = Self(
        name: .pendantOfDeath,
        class: .treasure,
        slot: .neck
    )
    
    /// Makes allied tropps immune to the [Hypnotize Spell](x-source-tag://Spell.hypnotize)
    ///
    /// - Tag: Artifact.pendantOfFreeWill
    ///
    static let pendantOfFreeWill = Self(
        name: .pendantOfFreeWill,
        class: .treasure,
        slot: .neck
    )
    
    /// Increases moral for allied trooops. Also makes allied tropps immune to Mind spells, such as the [Hypnotize Spell](x-source-tag://Spell.hypnotize)
    ///
    /// - Tag: Artifact.badgeOfCourage
    ///
    static let badgeOfCourage = Self(
        name: .badgeOfCourage,
        class: .treasure,
        slot: .miscellaneous
    )
    
    /// Renders your units immune to the spells [Lightning Bolt](x-source-tag://Spell.lightningBolt) and [Chain Lightning](x-source-tag://Spell.chainLightning), however, it has no effect against the [Titan's Lightning Bolt](x-source-tag://Spell.titansLightningBolt).
     ///
     /// - Tag: Artifact.pendantOfNegativity
     ///
     static let pendantOfNegativity = Self(
        name: .pendantOfNegativity,
        class: .major,
        slot: .neck
    )
    
    
    
    static let thunderHelmet    = Self(
        name: .thunderHelmet,
        class: .relic,
        slot: .head
    )
    
    static let titansGladius    = Self(
        name: .titansGladius,
        class: .relic,
        slot: .weapon
    )
    
    static let titansCuirass    = Self(
        name: .titansCuirass,
        class: .relic,
        slot: .torso
    )
    
    static let sentinelsShield  = Self(
        name: .sentinelsShield,
        class: .relic,
        slot: .shield
    )
    
    /// Combination artifiact. Gives you ability to cast the spell [Titan's Lightning Bolt](x-source-tag://Spell.titansLightningBolt).
    ///
    /// - Tag: Artifact.titansThunder
    ///
    static let titansThunder = Self(
        name: .titansThunder,
        class: .relic,
        type: .combination(
            of: [.thunderHelmet, .titansGladius, .titansCuirass, .sentinelsShield],
            equippedIn: .weapon
        )
    )
}
