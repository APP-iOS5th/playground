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
    let preferredCommunicationMethod: CommunicationMethod // 열거형 자체를 구조체로 저장
    
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
        let name = PersonName(givenName: givenName, familyName: familyName)
        self.init(name: name, commsMethod: commsMethod) // 필수 🔥
    }
    
    init(name: PersonName, commsMethod: CommunicationMethod) {
        self.name = name
        preferredCommunicationMethod = commsMethod
    }
    
    var displayName: String {
        return "\(name.givenName) \(name.familyName)"
    }
}

// ♥️ Dictionary ✨
// key 값은 index
var crew = Dictionary<String, Person>()

crew["Captain"] = Person(givenName: "Jean-Luc",
                         familyName: "Picard",
                         commsMethod: .phone)

// 위 한줄과 아래 두줄이 같다 convenience init 을 통해 편리하게 한줄로 !!
// var personName = PersonName(givenName: "Jean-Luc", familyName: "Picard")
// crew["Captain"] = Person(name: personName, commsMethod: .phone)

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
let cmo = crew[firstRole]
// cmo 변수에 person 담아서 출력
print("\(firstRole): \(cmo?.displayName ?? "N/A")")
