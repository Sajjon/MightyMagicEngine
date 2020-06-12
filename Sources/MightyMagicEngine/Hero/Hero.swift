
/// A player or AI controlled Hero controlling an army of creature stacks.
/// The Hero explores the world (adventure map) and fights battle
public final class Hero: Codable {
    
    public let name: String
    public private(set) var knowledge: Knowledge
    public private(set) var spellBook: SpellBook?
    public internal(set) var mana: Mana
    public private(set) var secondarySkills: [SecondarySkill] = []
    
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
}
