
/// A player or AI controlled Hero controlling an army of creature stacks.
/// The Hero explores the world (adventure map) and fights battle
public final class Hero: Codable {
    
    public let name: String
    public private(set) var knowledge: Knowledge
    public private(set) var spellBook: SpellBook?
    public internal(set) var mana: Mana
    public private(set) var secondarySkills: [SecondarySkill.Name: SecondarySkill] = [:]
    
    public init(
        name: String,
        knowledge: Knowledge,
        spellBook: SpellBook? = nil
    ) {
        self.name = name
        self.knowledge = knowledge
        self.spellBook = spellBook
        self.mana = Hero.manaPerKnowledge * knowledge
    }
}

public extension Hero {
    
    typealias Knowledge = UInt
    typealias Mana = UInt
    
    static let manaPerKnowledge = UInt(10)
    
    var magicSchoolSkillLevel: MagicSchoolSkillLevels {
        return MagicSchoolSkillLevels(
            airLevel: secondarySkills[.airMagic]?.level,
            earthLevel: secondarySkills[.earthMagic]?.level,
            fireLevel: secondarySkills[.fireMagic]?.level,
            waterLevel: secondarySkills[.waterMagic]?.level
        )
    }
}

public struct MagicSchoolSkillLevels {
    public let airLevel: SecondarySkill.Level?
    public let earthLevel: SecondarySkill.Level?
    public let fireLevel: SecondarySkill.Level?
    public let waterLevel: SecondarySkill.Level?
}

public extension MagicSchoolSkillLevels {
    var maxLevelIgnoringSchool: SecondarySkill.Level? {
        var max: SecondarySkill.Level?
        func setMaxIfHigher(_ keyPath: KeyPath<Self, SecondarySkill.Level?>) {
            func maxIfHigher(_ keyPath: KeyPath<Self, SecondarySkill.Level?>) -> SecondarySkill.Level? {
                let level = self[keyPath: keyPath]
                guard let maxSoFar = max else {
                    return level
                }
                return max(maxSoFar, level)
            }
            max = maxIfHigher(keyPath)
        }
        setMaxIfHigher(\.airLevel)
        setMaxIfHigher(\.earthLevel)
        setMaxIfHigher(\.fireLevel)
        setMaxIfHigher(\.waterLevel)
        return max
    }
}
