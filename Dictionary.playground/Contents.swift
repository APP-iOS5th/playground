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

enum Role: String {
    case captain = "Captain"
    case fisrtOfficer = "First Officer"
    case secondOfficer = "Second Officer"
    case chiefEngineer = "Chief Engineer"
    case councillor = "Councillor"
    case securityOfficer = "Security Officer"
    case chiefMedicalOfficer = "Chief Medical Officer"
}

class Person {
    let name: PersonName
    let preferredCommunicationMethod: CommunicationMethod //열거형 자체를 값으로 저장
    
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) { //convenience 하게 만드는거..? 기본 생성자는 내가
        let name = PersonName(givenName: givenName, familyName: familyName)
        self.init(name: name, commsMethod: commsMethod) //반드시 기본 초기화 함수를 호출해줘야함
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

crew["Captain"] = Person(givenName: "Jean-Luc",
                         familyName: "Picard",
                         commsMethod: .phone)

//var personName = PersonName(givenName: "Jean-Luc", familyName: "Picard")
//crew["Captain"] = Person(name: personName, commsMethod: .phone)    원래 이렇게 두줄짜리를 한줄로 하기 위해 컨비니언스 사용함

crew["First Official"] = Person(givenName: "William", 
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
let cmo = crew[firstRole]! //배열은 옵셔널하지 않음? 모든 공간에 다 들어가서..? 크루에 들어가는 키가 없을 수도 있음? 키를 아무거나 넣을 수 있어서 옵셔널
print("\(firstRole): \(cmo.displayName ?? "N/A")")





