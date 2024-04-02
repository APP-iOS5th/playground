
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
    case captain = "Captain"
    case firstOfficer = "First Officer"
    case secondOfficer = "Second Office"
    case chiefEngineer = "Chief Engineer"
    case councillor = "Councillor"
    case securityOfficer = "SecurityOfficer"
    case chiefMedicalOfficer = "ChiefMedicalOfficer"
    
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
        return "\(self.name.givenName) \(self.name.familyName)"
    }
}

var crew = Dictionary<Role, Person>()

crew[.captain] = Person(givenName: "Jean-Luc",
                         familyName: "Picard",
                         commsMethod: .phone)

crew[.firstOfficer] = Person(givenName: "William",
                               familyName: "Riker",
                               commsMethod: .email)

crew[.chiefEngineer] = Person(givenName: "Geordi",
                                familyName: "LaForge",
                                commsMethod: .textMessage)

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

let role = Array(crew.keys)
print(role)
let firstRole = role.first!
print(firstRole)
let cmo = crew[firstRole]
print("\(firstRole): \(cmo?.displayName ?? "N/A")")
