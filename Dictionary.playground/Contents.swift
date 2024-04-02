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
    
    // 편의상 해주는 초기화(self.init()을 필수로 해줘야 함)
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

var crew = Dictionary<String, Person>()

// 아래 두 줄의 코드를 한 줄로 만들기 위해서 convenience init()을 해줌
//var personName = PersonName(givenName: "Jean-Luc", familyName: "Picard")
//crew["Captain"] = Person(name: personName, commsMethod: .phone)

// dictionary에 등록
crew["Captain"] = Person(givenName: "Jean-Luc",
                         familyName: "Picard",
                         commsMethod: .phone)

crew["First Officer"] = Person(givenName: "William",
                               familyName: "Riker",
                               commsMethod: .email)

crew["Chief Engineer"] = Person(givenName: "Geordi",
                                familyName: "LaForge",
                                commsMethod: .textMessage)

crew["Second Officer"] = Person(givenName: "Data",
                                familyName: "Soong",
                                commsMethod: .fax)

crew["Councillor"] = Person(givenName: "Deanna",
                            familyName: "Troi",
                            commsMethod: .telepathy)

crew["Security Officer"] = Person(givenName: "Tasha",
                                  familyName: "Yar",
                                  commsMethod: .subSpaceRelay)

crew["Chief Medical Officer"] = Person(givenName: "Beverly",
                                       familyName: "Crusher",
                                       commsMethod: .tachyons)

let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!
//let cmo = crew[firstRole]!
//print("\(firstRole): \(cmo.displayName)")

let cmo = crew[firstRole]
print("\(firstRole): \(cmo?.displayName ?? "N/A")")
