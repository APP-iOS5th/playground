import UIKit
/*
//chapter1
var greeting = "Hello, playground"

let phrase: String = "The quick brown for jiyong over the lazy dog" // let 불변(상수), 예약어, 특정 값을 저장하기, 가능하면 변경 불가, 변경되지 않고 함수안에서 사용,
greeting = "Modificlation"

//phrase = "The quick brown for jiyong over the lazy dog" // 변수 선언하고 같은 값이여도 다시 넣을수 없음

let numberOfFoxes: Int = 1 //정수형
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3)/9 //부동소수점
var antherPharase = phrase // var 얼마든지 변경가능, 메모리에 재할당

antherPharase = "Modificlation"

var  pharseInfo = "The phrase" + " has: " // let으로 바꾸어도 계산후에 값을 저장하기 때문에 변경가능 이변수에서 좌측영역을 두번 사용불가
print(pharseInfo)

pharseInfo = pharseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals" // \()문자열 보관법 탈출어, 문자열안에서 특정문자를 사용하기 위해 \n(엔터 기능, 줄바꿈), \t()
print(pharseInfo)

print("Number of characters in phrase: \(phrase.count)") //count: 프로퍼티(속성), 문자열 수 출력해줌 ,P(프로퍼티), M(메소드)

let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
""" // """ """: 엔터 치고 사용할 수 있음, 타입을 안써준이유 타입 추론이 가능해서

let phrasesAreEqul = phrase == antherPharase // ==: 비교연산자
print(phrasesAreEqul)

let phraseHase44Characters = phrase.count == 40+4
print(phraseHase44Characters)

//chapter2
var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wendesday"
//dayOfTheWeek = nil // swift에서는 옵셔널을 선언하지 않으면 null값을 못넣어줌

var numberOfFingersHeldUpByFinn: Int? // ?: 옵셔널 선언 , null값을 넣을 수 있음(옵셔널을 선언해서), 한번 옵셔널은 영원히 옵셔널일 경우가 큼
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "" )// Expression implicitly coerced from 'Int?' to 'Any' 옵셔널일수도 있다라고 경고를줌 , ?? "": (null일경우 "" 출력, 기본값을 설정해줌으로써 null일 가능성을 제거해줘서)
let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // !(강제추출): 언래핑, 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)

//Chapter3
//함수 선언
func fullName(giveName: String, middleName: String = "Unkown", familyName: String) -> String{
    return "\(giveName) \(middleName) \(familyName) !"
}

let myFullName = fullName(giveName: "Keith", familyName: "Moon")
print(myFullName)


//오버로딩,오버로드
func combine(_ givenName: String, _ familyNme: String) -> String{ //_을 사용하면 함수 레이블을 사용하자 않고 사용할수 있음
    return "\(givenName) \(familyNme)"
}
func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}
let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5,10)

print(combinedString)
print(combinedInt)

//Chapter4
//클래스
class Person {
    
    //let(상수)은 init()메서드 필요(초기화 해줘야함)
    let givenName: String
    let miidleName: String
    let familyName: String
    var conuntryOfResidence: String = "KR" //기본값을 설정해줘서 초기화 하지 않음
    
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

//Chapter5
//reference: 참조 타입, 참조의 장점 한부분에서 변경하면 여러부분에 적용
class MovieReview{
    let movieTitle: String
    var startRating: Int
    
    init(movieTitle: String, startRating: Int){
        self.movieTitle = movieTitle
        self.startRating = startRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", startRating: 3)

let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

shawshankReviewOnYourWebsite.startRating = 5

print(referenceToReviewOnTwitter.startRating)
print(referenceToReviewOnFacebook.startRating)

//Chapter6
//enum(열거형)
enum ComprisonResult: Int{ //아무것도 주지않았을때 0부터 시작
    case ordersAscending //0
    case orderdSame //1
    case orderDescending //2
} //...3, 4, 5,

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    func isProfessional() -> Bool{
        return self == Title.dr || self == Title.prof
    }
    /*
    var isProfessional: Bool{
        return self == Title.dr || self == Title.prof
    }
     */
}

let title1 = Title.mr

print(title1.isProfessional())
//print(title1.isProfessional)
*/
//Chapter7
//구조체는 value타입
struct PersonName{
    let givenName: String
    let middleName: String
    var familyName: String
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    mutating func change(familyName: String){
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

//Chapter8
//클로저: 순수함수
//클로저있음으로써 함수 파라미터를 전달할 수 있고 함수 만들수 있음
//클로저도 인수에 기본값을 정의 할수 없음

let printAuthorDetails: () -> Void //Void대신 ()해도됨
    = {
    let name = PersonName(givenName: "Jiyong", middleName: "Mid", familyName: "Cha")
    let author = Person(name: name)
    print(author.displayString)
}
printAuthorDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keitch", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)

//파라미터를 전달하는 구조 input은 있지만 output은 없는구조, in은 클로저 인수를 받는 키워드
let printPersonDetails: (String, String, String) -> Void = {
    given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}
printPersonDetails("Kathleen", "Mary", "Moon")

let createPerson: (String, String, String) -> Person = {
    given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    return person
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)

//Chapter9
//protocol: 스스로 존재할 수 없음, init()없음
protocol Saveable{
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

//@escaping쓰면 함수가 다 끝나고 함수밖에서 실행됨
class Person: Saveable{
    //....
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        
        saveComplete(success: true)
    }
    func saveComplete(success: Bool){
        saveHandler?(success)
    }
}
