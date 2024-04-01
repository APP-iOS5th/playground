import UIKit

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var contryOfResidence: String = "KR"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    func funllName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(self.funllName()) - Location: \(self.contryOfResidence)"
    }
}

var person = (givenName: "Sanghyeon", middleName: "Yan", familyName: "Han") // 클래스 인스턴스

final class Family: Person { // 상속이 여끼까지라는 의미
    let relationship: String
    
    init(givenName: String,
         middleName: String,
         familyName: String,
         relationship: String) { // 새롭게 추가된 상수값을 초기화하는 생성자가 추가되었다.
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName) // 부모의 생성자를 상속
    }
}

var family = Family(givenName: "Sanghyeon", middleName: "Yan", familyName: "Han", relationship: "Brother")
