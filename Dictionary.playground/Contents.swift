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
    case secondOfficer = "Second Officer"
    case chiefEngineer = "Chief Engineer"
    case councillor = "Councillor"
    case securityOfficer = "Security Officer"
    case chiefMedicalOfficer = "Chief MedicalOfficer"
}

class Person {
    let name: PersonName
    let preferredCommunicationMethod: CommunicationMethod
    
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
        let name = PersonName(givenName: givenName, familyName: familyName)
        self.init(name: name, commsMethod: commsMethod)
    }   // 구조체의 값도 한번에 받을 수 있도록 생성자를 편리하게 재정의하는 개념
    // 이렇게 하지 않으면 구조체 값 따로 받고, 클래스 값 따로 받아야 함
    
    init(name: PersonName, commsMethod: CommunicationMethod) {
        self.name = name
        preferredCommunicationMethod = commsMethod
    }
    
    var displayName: String {
            return "\(name.givenName) \(name.familyName)"
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

let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!
let cmo = crew[firstRole]
print("\(firstRole): \(cmo?.displayName ?? "N/A")")
