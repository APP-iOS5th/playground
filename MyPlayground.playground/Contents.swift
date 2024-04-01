import UIKit

//var greeting = "Hello, playground"
//
//let phrase: String = "The quick brown for jumps over the lazy dog"
//
//greeting = "Modification"
//
//let numberOfFoxes: Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharactersPerWoed: Float = (3+5+5+3+5+4+3+4+3) / 9
//
//var anotherPharase = phrase
//
//anotherPharase = "Modification"
//
//var phraseInfo = "The phrase" + " has: "
//print(phraseInfo) //"The phrase has: "
//
//phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
//print(phraseInfo) // "The phrase has: 1 fox and 2 animals"
//
//print("Number of character in phrase: \(phrase.count)")
//
//let multilineExplanation = """
//Why is the following phrase often used?
//"The quick brown fox jumping over the lazy dog"
//This phrase contains every letter in the alphabet.
//"""
//
//let phrasesAreEqual = phrase == anotherPharase
//print(phrasesAreEqual)
//
//let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)
//
////옵셔널 설명
////옵셔널 : option + null(빈 칸) = 옵션으로 제공하는 null 기능
////기본 스위프트 언어는 널을 사용할 수 없음
////스위프트에서는 null을 nil이라고 사용
//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
////dayOfTheWeek = nil // 컴파일 오류 발생
//
////옵셔널 변수 선언 방법
////변수명 뒤에 ? 를 추가하면 이 변수가 있을수도 있고 없을 수도 있는 변수로 생성
//var numberOfFingersHeldUpByFinn: Int?
//numberOfFingersHeldUpByFinn = nil
//numberOfFingersHeldUpByFinn = 3
//
//print(numberOfFingersHeldUpByFinn)
//
////null 출력을 막는 연산자
////변수 뒤에 ?? 추가하고 null 대신 띄울 문자 입력
//print(numberOfFingersHeldUpByFinn ?? "Unknown")
//
////강제 언랩핑
////널을 사용할 수 없도록 막는 것
////변수 뒤에 ! 추가
////잘못하면 프로그램이 정지할 수 있음
////널 값이 없을 거라는 것을 확신할 때 만 사용해야 함
////모든 값이 유효할 때만 사용하거나, 아예 사용하지 말 것
//let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! //위험할 수 있음
//print(lastNumberOfFingersHeldUpByFinn)

//입력 매개변수와 출력
//입력
//아래와 같은 공식 형성: 각 매개변수를 어떤 타입으로 받을지 설정, 받은 값을 어떤 형태로 출력할지 설정
//func fullName(givenName: String, middleName: String, familyName: String) -> String{
//    return "\(givenName) \(middleName) \(familyName)"
//}
//
////출력
////함수의 매개변수에 맞는 타입의 값을 입력해서 출력
//let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
//print(myFullName)

//함수 이름이 같아도, 안에 들어있는 타입에 따라 알아서 구분
//매개변수앞의 _는 매개변수 이름을 생략하겠다는 뜻
func combine(givenName: String, familyName: String) -> String{
    return "\(givenName) \(familyName)"
}
func combine(_ integer1: Int, _ integer2: Int) -> Int{
    return integer1 + integer2
}

//앞에 매개변수이름 생략 불가능
let combinedString = combine(givenName: "Finnley", familyName: "Moon")
//앞에 매개변수이름 생략 가능
let combinedInt = combine(/*integer1:*/ 5, /*integer2:*/ 10)

print(combinedString)
print(combinedInt)

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    //self가 붙어있다는 것은 클래스가 가지고 있는 변수라는 의미
    //범위 한정자
    //self = 나 = class
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(fullName()) - Location: \(countryOfResidence)"
    }
}

var person = Person(givenName: "Jungman", middleName: "Dan", familyName: "Bae")

final class Family: Person {
    let relationship: String
    
    init(givenName: String,
         middleName: String,
         familyName: String,
         relationship: String) {
        //self는 나, super는 부모 상속자
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Jungman", middleName: "Dan", familyName: "Bae", relationship: "Dad")
