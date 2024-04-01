import UIKit

//var greeting = "Hello, playground"
//
//let phrase: String = "The quick brown fox jumps over the lazy dog"
//// 나중에 값이 변경되는 경우를 제외하고 가능하면 let(상수)를 써야 한다.
//
//greeting = "Modification"
//
//let numberOfFoxes: Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
//
//var anotherPhrase = phrase  // let 으로 선언했던 값을 변경하고 싶은 경우
//anotherPhrase = "Modification"
//
//var phraseInfo = "The phrase" + "has: "  // 오른쪽 표현식이 계산된 후에 값에 할당되기 때문에, let 으로 해도 상관없다.
//print(phraseInfo)   // "The phrase has: "
//
//phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
//print(phraseInfo)
//
//print("Number of characters in phrase: \(phrase.count)")       // phrase 라는 '객체'에 count 라는 메소드(함수)[m]/프로퍼티[p]가 존재한다.
//// 문자열 등을 어떤 객체가 있고, 그 안에 프로퍼티나 메소드가 미리 정의되어 있다!
//
//// 여러 줄에 걸쳐서 문자열을 사용하고 싶은 경우 큰 따옴표 세 개 사용
//let multilineExplanation = """
//Why is the following phrase often used?
//"The quick brown fox jumps over the lazy dog"
//This phrase contains every letter in the alphabet.
//"""
//
//// Boolean
//let phrasesAreEqual = phrase == anotherPhrase
//print(phrasesAreEqual)  // false
//
//let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)    // true
//
//// Swift 는 정적 타입 언어 즉, 특정 타입은 반드시 가지고 있으며 한 번 정의된 것은 다른 타입으로 변경 불가능.
//// 타입 추론. JavaScript 는 동적 타입.
//
//
//// optional
//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
////dayOfTheWeek = nil // 컴파일 오류 발생     // nil 과 null 은 같은 것, 다른 표현
//
//var numberOfFingersHeldUpByFinn: Int?
//numberOfFingersHeldUpByFinn = nil
//numberOfFingersHeldUpByFinn = 3
//
//print(numberOfFingersHeldUpByFinn ?? "") // ?? 를 넣으면, null 의 가능성이 제거된다고 보면 된다.
//// null 일 때, null 대신에 기본값 정의 하기
//
//
//let lastNumberOfFingerHeldUpByFinn: Int = numberOfFingersHeldUpByFinn!  // 강제 옵셔널 언래핑. 위험할 수 있음. 없는 값을 강제로 넣으려고 하니까. 변수에 nil 이 있을 경우 런타임 에러
//print(lastNumberOfFingerHeldUpByFinn)
//
//
//
//// 함수는 기능을 '분리'하여, 재사용되거나 구조화할 수 있다. 그러나 너무 남발하면, 읽기 어려운 코드가 될 수도 있다.
//// camelcase(대소문자로 구분)로 함수 이름을 짠다.
//// 기본 매개변수 값이 있는 경우에는, 함수를 호출할 때 해당 매개변수를 생략할 수 있다.
//func fullName(givenName: String, middleName: String = "Unknown", familyName: String) -> String {
//    return "\(givenName) \(middleName) \(familyName) !"
//}
//
//// 표현식은 등호에 들어가는데, 함수를 실행하는 것도 마찬가지로 표현식에 들어간다.
//let myFullName = fullName(givenName: "Keith", familyName: "Moon")
//
//print(myFullName)
//
//
//// 함수명이 같아도 파라미터가 다르다면, 함수 구분 가능. (정적타입 언어이므로)
//func combine(_ givenName: String, _ familyName: String) -> String {     // _ 는 파라미터 레이블 자리인데, 이렇게 _를 씀으로써, 나중에 함수를 호출할 때 변수명을 쓰지 않고 변수값 즉, 타입만으로 파라미터를 구분짓는 행위를 매개변수 오버로딩이라 한다.
//    return "\(givenName) \(familyName)"
//}
//
//func combine(_ integer1: Int, _ integer2: Int) -> Int {
//    return integer1 + integer2
//}
//
//let combinedString = combine("Finnley", "Moon")
//let combinedInt = combine(5, 10)




//==============================
// 개체가 가지고 있는 함수를 메소드라 한다.
// 클래스 객체를 init 으로 초기화

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidents: String = "KR"
    
    // 처음에 값이 초기화 되어있지 않던 상수는 값이 처음부터 있어야 하므로, init 으로 초기화
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName      // 여기서는 self 를 써야 함. 왜냐하면, init파라미터랑 초기화 이름이 같기 때문에
        self.middleName = middleName
        self.familyName = familyName
    }
    
    // 클래스 메서드와 일반 함수의 차이 (클래스에서 선언된 값을 사용할 수 있음)
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    // 프로퍼티(변수) - 괄호 없이 쓸 수 있는 것.
    // self 는 안써도 되지만, self 를 쓰면, 클래스에서 선언된 값을 쓰겠다고 명시적으로 나타내는 것임. - scoping(변수가 가지고 있는 작용범위) 참고
    // 기본적인 scoping 범위는 함수 코드 블럭 안에서 선언한 변수 부터 적용. 그 다음 Person 클래스 코드 블럭 안에서 선언된
    var displayString: String {
//        var countryOfResidents = "?"
        return "\(self.fullName()) - Location: \(self.countryOfResidents)"
    }
}

var person = Person(givenName: "yungui", middleName: " ", familyName: "LEE")    // 클래스 인스턴스를 만드는 코드 (이 때 클래스를 사용할 수 있는 객체가) 메모리에 올라감.
// Person 이 하나의 조합된 별도의 타입으로 만들어진 것임


// 개념 확장의 의미에서 상속이라는 것이 있다.
// Family 라는 객체는 Person 이라는 객체보다 좀 더 기능적으로 뭔가를 "확장"한 것.
final class Family: Person {
    let relationship: String
    
    init(givenName: String, 
         middleName: String,
         familyName: String,
         relationship: String) {
        self.relationship = relationship// self 는 '나'라는
        super.init(givenName: givenName, middleName: middleName, familyName: familyName) // super 부모 클래스 상속 받을 때 쓴다. 이미 정의되있는 것을 굳이 다시 만들지 않음
    }
}

var family = Family(givenName: "", middleName: "", familyName: "", relationship: "")
