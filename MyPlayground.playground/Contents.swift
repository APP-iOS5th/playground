import UIKit

//Chapter4
//클래스
class Person {
    
    //let(상수)은 init()메서드 필요(초기화 해줘야함)
    let givenName: String
    let miidleName: String
    let familyName: String
    var conuntryOfResidence: String = "KR" //기본값을 설정해줘서 초기화 하지 않음 그리고 var이여서
    
    //self(범위한정자)
    init(givenName: String, middleName: String, familyName: String){
        self.givenName = givenName
        self.miidleName = middleName
        self.familyName = familyName
    }
    
    
    func fullName() -> String{
        return "\(givenName) \(miidleName) \(familyName)" //클래스내에 선언되어있어서 바로 가져다 쓸수 있음
    }
    
    var displayString: String{ //함수같이 쓰는 프로퍼티
        //var conuntryOfResidence = "?"
        return "\(self.fullName()) - Location: \(self.conuntryOfResidence)" //self를 쓴 이유 위에서 선언해줘서
    }
}
var person  =  Person(givenName: "Jiyong", middleName: "Mid", familyName: "Cha") //클래스 인스턴스를 만들어줌

//final 상속 Family에서 끝내고 확장하지 않는다는 의미
final class Family: Person{
    let relationship: String
    
    //super() 내가 상속한 부모클래스 범위내에 상속
    init(givenName: String,
         middleName: String,
         familyName: String,
        relationship: String){
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Jiyong", middleName: "Mid", familyName: "Cha", relationship: "Son")

//reference: 참조 타입

