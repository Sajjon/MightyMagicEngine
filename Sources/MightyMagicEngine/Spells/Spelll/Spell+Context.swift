//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-10.
//

import Foundation

public extension Spell {
    enum Context {
        case battle(Battle)
        case adventureMap(AdventureMap)
    }
}

public extension Spell.Context {
    
    static func battle(
        selection: Battle.Selection,
        duration: Battle.Duration
    ) -> Self {
        .battle(.init(selection: selection, duration: duration))
    }
    
    static func adventureMap(
        selection: AdventureMap.Selection,
        duration: AdventureMap.Duration
    ) -> Self {
        .adventureMap(.init(selection: selection, duration: duration))
    }
}



public extension Spell {
    func requiresTarget(levels: MagicSchoolSkillLevels) -> Bool {
        effect.context.requiresTarget(levels: levels)
    }
}

public extension Spell.Context {
    func requiresTarget(levels: MagicSchoolSkillLevels) -> Bool {
        switch self {
        case .battle(let battle): return battle.requiresTarget(levels: levels)
        case .adventureMap(let adventureMap): return adventureMap.requiresTarget(levels: levels)
        }
    }
}

public extension Spell.Context.Battle {
    func requiresTarget(levels: MagicSchoolSkillLevels) -> Bool {
        switch selection {
        case .sourceAndTarget: return true
        case .target(let target):
            switch target {
            case .always(let targetOption):
                return targetOption.requiresTarget
            case .skillLevelDependent(let levelDependent):
                return levelDependent.requiresTarget(levels: levels)
            }
        }
    }
}

public extension Spell.Context.AdventureMap {
    func requiresTarget(levels: MagicSchoolSkillLevels) -> Bool {
        implementMe
    }
}
