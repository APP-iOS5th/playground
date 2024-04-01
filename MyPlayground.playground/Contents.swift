import UIKit

// 1. Person 클래스 객체 생성
// 클래스의 선언부(설계도)
class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    let countryOfResidence: String = "KR"
    // 위에 까지만 작성하면 Class 'Person' has no initializers 이런 에러가 난다. (init이 필요함.)
    
    // 변수는 나중에 값을 넣어줘도 되지만 상수는 미리? 넣어줘야 함.(꼭 안 넣어도 된다 안 넣어야 한다는 아님)
    // self는 class parameter가 가지고 있는 이름이라는 걸 명시
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    // class method와 일반 함수의 차이점 : 파라미터를 만들지 않아도 된다. (맞나?)
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    // 함수와 변수 중간에 있는 녀석, 뭘까..
    var displayString: String {
        // var countryOfResidence = "?" // 변수 스코프 설명을 위해 작성했던 코드
        return "\(fullName()) - Location: \(self.countryOfResidence))"
    }
}

// 아래의 peson이 클래스 인스턴스
var person = Person(givenName: "Kyusang", middleName: "Shark", familyName: "Hwang")

// 가족이라는 클래스는 펄슨이라는 클래스 보다 더 자세하기 설명한다.
final class Family: Person {
    let relationship: String
    
    init(givenName: String,
        middleName: String,
        familyName: String = "Moon",
        relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Kyusang", middleName: "Shark", familyName: "Hwang", relationship: "Pet")













