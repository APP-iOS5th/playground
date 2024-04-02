import UIKit

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
    
    // convenience init : 편의로 만든 초기화 함수는 반드시 기본 초기화 함수를 만들 수 있다.(옵셔널함, line 36 참고)
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

// convenience init 이 없었다면 아래와 같이 작업해야한다. (번거로움)
//var personName = PersonName(givenName: "Jean-Luc", familyName: "Picard")
//crew["Captain"] = Person(name: PersonName, commsMethod: .phone)

// CommunicationMethod 생략가능
//crew["Captain"] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: CommunicationMethod.phone)

crew["Captain"] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)

crew["First Officer"] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)

crew["Chief Engineer"] = Person(givenName: "Geordi", familyName: "LaForge", commsMethod: .textMessage)

crew["Second Officer"] = Person(givenName: "Data", familyName: "Soong", commsMethod: .fax)

crew["Councillor"] = Person(givenName: "Deanna", familyName: "Troi", commsMethod: .telepathy)

crew["Security Officer"] = Person(givenName: "Tasha", familyName: "Yar", commsMethod: .subSpaceRelay)

crew["Chief Medical Officer"] = Person(givenName: "Beverly", familyName: "Crusher", commsMethod: .tachyons)

// 딕셔너리 장점 roles을 따로 뽑아볼 수 있음.

let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!
print(firstRole)

let cmo = crew[firstRole]!
print("\(firstRole): \(cmo.displayName)")

// !를 빼고 아래와 같이 할 수도 있다.
//let cmo = crew[firstRole]
//print("\(firstRole): \(cmo?.displayName ?? "N/A")")

// 언래핑 하지 않고 할 수도 있다고 하는데.. 음.. 내가 뭘 잘 못했나?
//let cmo = crew[firstRole, default: "N/A"]
//print("\(firstRole): \(cmo.displayName)")
