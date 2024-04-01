//import UIKit
//
//var greeting = "Hello, playground"
//
//let phrase: String = "The quick brown fox jumps over the lazy dog"
//
//greeting = "Modification"
//
//let numberOfFoxes: Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
//
//var anotherPhrase = phrase //다른 변수에 재할당 하면 바꿀 수 있음
//
//anotherPhrase = "Modification"
//
//var phraseInfo = "The phrase" + " has: "
//print(phraseInfo)
//
//phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
//print(phraseInfo)
//
//// \n \t 탈출어?
//// \ => 다음에 오늘 알파벳에 따라서 특수 기능 \n => new line    html의 <br> 과 같음
//
//print("Number of characters in phrase: \(phrase.count)") // 프로퍼티 !== 메소드
//
//let multilineExplanation: String = """
//why is the following phrase often used?
//"The quick brown fox jumps over the lazy dog"
//This phrase contains every letter in the alphabet.
//"""
//
//print(multilineExplanation)
//
//let phrasesAreEqual = phrase == anotherPhrase //원래는 비교하는 함수를 만들기도 했음 지금은 편하게 ==으로 비교 가능
//print(phrasesAreEqual)
//
//let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)
//
////타입 추론이 가능해서 타입 지정을 안할 수 있음
////정적 타입 = 한 번 정의되면 다른 타입으로 변경 불가 => 자바스크립트와 결정적 차이 자바스크립트는 동적 타입
//
////nil ( optional) null을 쓸 수 있게 해주자 null이 없는 언어를 지향하지만 사용하려면 optional value를 써.
//// 자동차 살 때 옵션, 있어도 되고 없어도 돼. 돈을 더 낼 뿐.
//
//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
////dayOfTheWeek = nil //컴파일 오류
//
////코틀린? 스위프트를 따라하는 언어놈,,
//
//var numberOfFingersHeldUpByFinn: Int? // ? => 없을 수도 있어 기본 타입은 nil 사용 불가지만 ? 사용하면 가능 Int 말고 string 등 다른 타입도 가능
//numberOfFingersHeldUpByFinn = nil
//numberOfFingersHeldUpByFinn = 3
//
//print(numberOfFingersHeldUpByFinn) //너 주의해 이거 옵셔널이야
//
////print(numberOfFingersHeldUpByFinn ?? "Unknown") // 없을 때 표시하고 싶은 말 표시가능 ??두개면 옵셔널이 출력이 안돼 왜? ?? 를 넣은 순간 nil 의 가능성이 제거 되어서
//
////한번 기본 타입은 계속, 한번 옵셔널은 영원히 옵셔널인데,, ! 연산자
//
//let lastNumberOfFingerHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! //위험할 수 있음
//
//print(lastNumberOfFingerHeldUpByFinn)
//
//
////void??
//
//func fullName(givenName: String, middleName: String = "Unknown", familyName: String) -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//}
//
//let myFullName = fullName(givenName: "beom", /*middleName: "jun",*/ familyName: "hong")
//
//print(myFullName)
////print(fullName(givenName: "1", middleName: "2", familyName: "3"))
//
//func combine(_ givenName: String, _ familyName: String) -> String{
//    return "\(givenName) \(familyName)"
//}
//
//func combine(_ integer1: Int, _ integer2: Int) -> Int {
//    return integer1 + integer2
//}
//
//let combinedString = combine("Finnley", "Moon")
//let combineedInt = combine(5, 10)
//
////매개변수 오버로딩? => 타입만으로 구분짓는거 (함수가 같은 이름이지만 타입이 다름)
//
////객체 => 세상 모든 만물
//
//class Person {
//    let givenName: String
//    let middleName: String
//    let familyName: String
//    var countryOfResidence: String = "KR"
//    
//    init(givenName: String, middleName: String, familyName: String) { //처음 부터 있어야하는 함수 init (let 은 처음부터 있어야해 변경할 수 없는 상수니까, 이 클래스를 초기화할때는 변수를 꼭 세개 만들어야해
//        // 변수는 나중에 넣어줄 수 있지만 상수는 처음부터 있어야 해
//        self.givenName = givenName
//        self.middleName = middleName
//        self.familyName = familyName
//    }
//    
//    func fullName() -> String { //매개 변수를 받아줄 필요가 없어졌어 왜냐면 클래스 안에 있는 프로퍼티를 자유롭게 가져다 쓸수 잇음
//        return "\(givenName) \(middleName) \(familyName)" //클래스 메소드는 클래스에 정의된 변수를 가져다 쓸 수 있음 일반 함수와 차이
//    }
//    
//    var displayString: String{ //얘는 정확히 함수는 아니고 변수에 해당함,, 나중에 설명해주심 함수처럼 동작하는 변수
//        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
//    }
//}
// //self 는 클래스에 있는 걸 사용한다는 의미..? self 는 클래스 자신 범위 한정자
//
//var person = Person(givenName: "JunBeom", middleName: "Dan", familyName: "Hong") //클래스 인스턴스 person (붕어빵 튀어나온 완성품) 마지막 한줄이 클래스 인스턴스를 만들어주는 한줄 메모리에 올라감 person 객체 생성
//
//final class Family: Person {  //Family 라는 클래스는 좀 더 상세한? //final 은 family 에써 끝낼거야 확장 추가하지마 날 더 상속받지마 유지보수 힘들어져,, 하고 싶으면 Person 을 상속받아!
//    let relationship: String
//    
//    init(givenName: String,
//         middleName: String,
//         familyName: String,
//         relationship: String) {
//        self.relationship = relationship
//        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
//    }
//}
//
////var family = Family(givenName: <#T##String#>, middleName: <#T##String#>, familyName: <#T##String#>) 추가 전에는 똑같음
//
//var family = Family(givenName: "JunBeom", middleName: "Dan", familyName: "Hong", relationship: "Son")
//
//class MovieReview {
//    let movieTitle: String
//    var starRating: Int
//    init(movieTitle: String, starRating: Int) {
//        self.movieTitle = movieTitle
//        self.starRating = starRating
//    }
//}
//
//let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)
//
////social media 게시
//let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
//let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite
//
//print(referenceToReviewOnTwitter.starRating)
//print(referenceToReviewOnFacebook.starRating)
//
//shawshankReviewOnYourWebsite.starRating = 5
//
//print(referenceToReviewOnTwitter.starRating)
//print(referenceToReviewOnFacebook.starRating)
//
////값을 한군데만 변경해도 다 변경됨 => 참조 데이터의 장점
////부동산에 집을 들고 가는게 아니고 등기를 만듦 등기가 레퍼런스.
//
//enum ComparisonResult : Int { //상태값을 문자로 이해 코드로 이해하기에 직관적?
//    case orderedAscending //0
//    case orderedSame // 1
//    case orderedDescending //2
//    // ... 3, 4, 5, ...
//}
//
//
//enum Title: String { //열거형 //primative 타입(가장 단순한 자료 타입(정수, 실수, 불리언 등등)) 문자형은 원시 자료 타입 아님(하지만 최적화가 잘 되어 있어서 막써도 문제가 잘 되지는 않음)
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "Mister"
//    case miss = "Miss"
//    case dr = "dr"
//    case prof = "Prof"
//    case other
//
//    var isProfessional: Bool {
//        return self == Title.dr || self == Title.prof
//    }
//}
//
//
//let title1 = Title.mr
//
//print(title1.isProfessional) //숫자로 비교하는거 보다 mr mrs 이런걸로 비교하는게 더 좋잖아
//
//
//// first class (type)(citizen) 순수함수?
//
////구조체 struct enum 하고 클로저 사이에 있었어야하네,,
//
//
////class 는 레퍼런스 타입이다 (참조 타입)
////struct 는 밸류 타입이다 //비슷한 목적으로 만들어졌으나 struct가 c언어를 통해 만들어짐 근데 밸류 타입이다보니 생기는 비효율들.
////class는 틀인데 그 안의 값 하나하나는 레퍼런스..? 근데 틀만 가지고도 처리할 수 있어
////struct는 공간을 전부 할당해서 그 크기만큼 메모리에 들고 있어야해 class 보다 무조건 커짐. 장점은? class는 계속 가져와야 하는데 struct는 바로 계산이 됨. 골조가 값을 그대로 물고있어서 성능이 좋고 빠름. class 복사는 순식간, struct 복사는 메모리 오버플로우 날수도 있고 힘들어
////구조체의 성능을 class가 따라갈 수 없음.(궁극적 성능만 보면)
////서로 상호 보완적인 관계
//
struct PersonName {
    let givenName: String
    let middleName: String
    var familyName: String
     
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
     
    mutating func change(familyName: String) {
        self.familyName = familyName
    }
}

class Person {
     
    let birthName: PersonName
    var currentName: PersonName
    var countryOfResidence: String
     
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
     
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

var printAuthorDetails: () -> Void = { //반환할 필요없어 할때 void? () -> () 로 사용해도 됨?
    let name = PersonName(givenName: "JunBeom", middleName: "Dan", familyName: "Hong")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()

let createAuthor: () -> Person = { //전달하는건 없고 받는것만 있는
    let name = PersonName(givenName: "Keith", middleName: "Daivd", familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)

let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}

printPersonsDetails("Kathleen", "Mary", "Moon")

let createPerson: (String, String, String) -> Person = {given, middle, family in //in 스위프트가 인식하는 예약어 세개의 변수들 나열되어있고 왼쪽 String 세개 하나하나 대응?
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)

protocol Saveable { //단독으로 의미를 지니진 않음
    var saveNeeded: Bool {get set}
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

//지식의 저주...
//상속과 유사하지만 다름 부가적인 느낌..? init 이 없음

class Person: Saveable { //계약 같은거야 세이버블 하겠다고 결심했으면 너 반드시 만들어야 하는 함수를 빼먹었는데?
    //....
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
     
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
         saveHandler = handler
         // Send person information to remove database
         // Once remote save is complete, it calls
           // saveComplete(Bool)
         // We'll fake it for the moment, and assume the save is
           // complete.
         saveComplete(success: true)
    }
     
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}



















