struct PersonName {
    let givenName: String
    let familyName: String
}

enum CommunicationMethod {
    case phone
    case email
    case textMessage
    case fax
    case telepathy
    case subSpaceRelay
    case tachyons
}

class Person {
    let name: PersonName
    let preferredCommunicationMethod: CommunicationMethod
    
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
        let name = PersonName(givenName: givenName, familyName: familyName)
        self.init(name: name, commsMethod: commsMethod)
    }
    
    init(name: PersonName, commsMethod: CommunicationMethod) {
        self.name = name
        preferredCommunicationMethod = commsMethod
    }
    
    var displayName: String {
        return "\(name.givenName) \(name.familyName)"
    }
}

var crew: [String: Person] = [:]

crew["Captain"] = Person(givenName: "Seongbin", familyName: "Jo", commsMethod: .phone)

crew["First Officer"] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)

crew["Chief Engineer"] = Person(givenName: "Geordi", familyName: "LaForge", commsMethod: .textMessage)

crew["Second Officer"] = Person(givenName: "Data", familyName: "Soong", commsMethod: .fax)

crew["Councillor"] = Person(givenName: "Deanna", familyName: "Troi", commsMethod: .telepathy)

crew["Security Officer"] = Person(givenName: "Tasha", familyName: "Yar", commsMethod: .subSpaceRelay)

crew["Chief Medical Officer"] = Person(givenName: "Beverly", familyName: "Crusher", commsMethod: .tachyons)


print(crew)

let roles = Array(crew.keys)
print(roles)
print(roles.first!)
print(crew[roles.first!]!.displayName)
