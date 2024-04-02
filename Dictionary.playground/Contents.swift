
//딕셔너리
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

enum Role: String{
    case captain = "Captain"
    case firstOfficer = "FirstOfficer"
    case secondOfficer = "SeconOfficer"
    case chiefEngineer = "ChiefEngineer"
    case councillor = "Councillor"
    case securityOfficer = "SecurityOfficer"
    case chiefMadicalOfficer = "ChiefMadicalOfficer"
}

class Person {
    let name: PersonName
    let preferredCommunicationMethod: CommunicationMethod
    
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) { //기본 초기화 함수 추가해줘야함, 편의상 초기화함수
        let name = PersonName(givenName: givenName, familyName: familyName)
        self.init(name: name, commsMethod: commsMethod) //반드시 필요
    }
    
    init(name: PersonName, commsMethod: CommunicationMethod) {
        self.name = name
        preferredCommunicationMethod = commsMethod
    }
    var displayName: String{
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

crew[.chiefMadicalOfficer] = Person(givenName: "Beverly",
                                       familyName: "Crusher",
                                       commsMethod: .tachyons)
let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!
let cmo = crew[firstRole] //crew["Unknown"]
print("\(firstRole): \(cmo?.displayName ?? "N/A")") //\(cmo?.displayName ?? "N/A")
