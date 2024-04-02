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
    
    // 편의상 추가한 생성자 함수 (두 줄을 한 줄로)
    // convenience init은 이름과 성을 별도의 문자열로 받아 PersonName 인스턴스를 생성하고, 이를 사용해 다른 초기화 메소드를 호출합니다. 이는 초기화 과정을 더 간편하게 만들어 줍니다.
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
        let name = PersonName(givenName: givenName, familyName: familyName)
        self.init(name: name, commsMethod: commsMethod)     // 기본 생성자 함수는 필수이기 때문
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

// Captain과 First Officer라는 키를 사용하여 Person 인스턴스를 딕셔너리에 추가
crew["Captain"] = Person(givenName: "Jean-Luc",
                         familyName: "Picard",
                         commsMethod: .phone)


/*
 // convenience init을 사용하지 않는 경우
 let captainName = PersonName(givenName: "Jean-Luc", familyName: "Picar")
 let captain = Person(name: captainName, commsMethod: .phone)
 crew["Captain"] = captain
 */

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

// dictionary 는 순서 없는데, 그 키들을 배열에 넣은 상태임
let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!    // first 는 옵셔널Value 이기 때문에, 강제 언래핑
let cmo = crew[firstRole]   // cmo가 옵셔널(Optional)인 이유는 Dictionary의 인덱싱 작업 결과가 항상 유효한 값(즉, 해당 키에 해당하는 값이 실제로 존재하는 경우)을 보장하지 않기 때문
print("\(firstRole): \(cmo?.displayName ?? "N/A")")

