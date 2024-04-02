import UIKit

//MARK: - Dictionary
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
    case chiefMedicalOfficer = "Chief Medical Officer"
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

//1.딕셔너리 생성
var crew = Dictionary<Role, Person>()

//2. 딕셔너리에 직원 세부 정보 추가:
crew[.captain] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)
crew[.firstOfficer] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)
crew[.chiefEngineer] = Person(givenName: "Geordi", familyName: "LaForge", commsMethod: .textMessage)

//3. 딕셔너리에서 역할 키 배열 검색:
let roles = Array(crew.keys)
print(roles)

//4. 역할 키를 사용하여 직원 검색 및 출력:
let firstRole = roles.first! // "Chief Medical Officer"
let cmo = crew[firstRole]! // Person: Beverly Crusher
print("\(firstRole): \(cmo.displayName)")

//5. 딕셔너리에 저장된 값을 교체:
print(crew[.secondOfficer]!.name.givenName) // "Tasha"
crew[.secondOfficer] = Person(givenName: "Worf", familyName: "Son of Mogh", commsMethod: .subSpaceRelay)
print(crew[.secondOfficer]!.name.givenName) // "Worf"
