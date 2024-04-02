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

enum Role: String {
    case captain = "Captian"
    case firstOfficer = "First Officer"
    case chiefEngineer = "Chief Engineer"
    case secondOfficer = "Second Officer"
    case councillor = "Councillor"
    case securityOfficer = "Security Officer"
    case chiefMedicalOfficer = "Chief Medical Officer"}
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

var crew = Dictionary<Role, Person>()

//crew["Captain"] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: CommunicationMethod.phone)
crew[.captain] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)
crew[.firstOfficer] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)
crew[.chiefEngineer] = Person(givenName: "Geordi", familyName: "Laforge", commsMethod: .textMessage)
crew[.secondOfficer] = Person(givenName: "Data",
                                familyName: "Soong",
                                commsMethod: .fax)

crew[.councillor] = Person(givenName: "Deanna",
                            familyName: "Troi",
                            commsMethod: .telepathy)

crew[.securityOfficer] = Person(givenName: "Tasha",
                                  familyName: "Yar",
                                  commsMethod: .subSpaceRelay)

crew[.chiefMedicalOfficer] = Person(givenName: "Beverly",
                                       familyName: "Crusher",
                                       commsMethod: .tachyons)
crew[.secondOfficer] = Person(givenName: "Data", familyName: "Soong", commsMethod: .fax)

crew[.councillor] = Person(givenName: "Deanna", familyName: "Troi", commsMethod: .telepathy)

crew[.securityOfficer] = Person(givenName: "Tasha", familyName: "Yar", commsMethod: .subSpaceRelay)

crew[.chiefEngineer] = Person(givenName: "Beverly", familyName: "Crusher", commsMethod: .tachyons)

let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!
//let cmo = crew[firstRole]!
//print("\(firstRole): \(cmo.displayName)")

let cmo = crew[firstRole]
print("\(firstRole): \(cmo?.displayName ?? "N/A")")

