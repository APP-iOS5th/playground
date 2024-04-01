import UIKit
import Foundation

var greeting = "Hello, playground"

// let 으로 정의한 변수는 불변하는 상수 & 예약어
let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

// 소수점 자리 계산
// 실제 계측을 하거나 할 때 사용하기 때문에 주의해서 사용하기
let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

// 새로 할당하면 내가 얼마든지 let phrase 바꿔서 사용할 수 있음
var anotherPhrase = phrase

// 메모리에 새 공간을 재할당
anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

// \() = 탈출어 • \n = new line = <br> • \t
phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

// count 는 property (문자열의 갯수)
// 객체는 프로퍼티와 메소드()를 갖고 있음
print("Number of characters in phrase: \(phrase.count)")

// Swift 는 정적 타입 언어 ✨
// 타입 선언을 해야 하며, 안 하는 경우는 추론 가능할 경우만!
let multilineExplanation: String = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

// 상수와 변수를 비교
let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual)

// property 와 표현식을 비교
let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)

// 스위프트 변수는 애초에 null 을 받지 못하게 설정해둠, 대신 옵셔널
var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
// dayOfTheWeek = nil 컴파일 오류 발생

// Optional = 이 값은 비워져 있을 수도 있어 🤔
// 한번 Optional 은 영원한 Optional
var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

// ?? 두개 쓰면 nil 대신 내가 정의한 애로 나와 (nil 가능성 제거)
print(numberOfFingersHeldUpByFinn ?? "Unknown")

// ! 로 강제 언래핑
// 없는 값을 강제로 있는 데에 넣으려고 하니까 위험할 수 있음 🔥
let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn!

// 함수 (도 표현식임, 등호로 표시)
// middleName= "" <- 기본값을 넣어준거임
func fullName(givenName: String, middleName: String = " ", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

// (왼쪽) 상수에 할당 = 함수 실행부 (오른쪽)
let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
print(myFullName)

// _ = 와일드카드 패턴 🃏 (변수명, 레이블을 제외하고 사용할 수 있도록 해줌)
// 매개변수 오버로드
func combine (_ giveName: String, _ familyName: String) -> String {
    return "\(giveName) \(familyName)"
}

func combine (_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

// 파라미터 오버로딩
// 와일드카드 패턴 혹은 오버로딩을 안 한다면: let comebinedString = combine(givenName: "Finnley", familyName: "Moon")
let comebinedString = combine("Finnley", "Moon")
let comebinedInt = combine(5, 10)

print(comebinedString)
print(comebinedInt)

// ♥️ 클래스 ✨
class Person {
    let givenName: String // 상수 property
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    // 변수는 나중에 넣어도 되는데, 상수는 그럴 수 없어서 초기화 함수에 넣음
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    // 함수 바운더리 안에 있기 때문에 클래스에 파라미터로 전달받지 않아도
    // 정의된 변수를 가져와서 쓸 수 있음
    // ✔️ 함수
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    // ✔️ 프로퍼티
    // self 를 써도 안 써도 괜찮음
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
}

// 붕어빵 틀인 클래스 Person 을 만들어서 🥨
// 붕어빵인 클래스 인스턴스 변수 person 으로 메모리에 올라가서 행위할 수 있게 됨
var person = Person(givenName: "Yunwon", middleName: "Sally", familyName: "Chae")

// ♥️ 상속 ✨
// Family 클래스는 Person 보다 상세한 기록이 가능함 (확장)
final class Family: Person {
    let relationship: String
    
    init(givenName: String,
         middleName: String,
         familyName: String,
         relationship: String) {
        // • self 는 나라는 범위
        self.relationship = relationship
        // • super 는 내가 상속한 나의 부모 클래스의 범위 함수 호출
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Yunwon", middleName: "Sally", familyName: "Chae", relationship: "Daughter")

// 클래스 객체 = reference types ✨
class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

// 클래스 인스턴스
let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

// 소셜미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)

shawshankReviewOnYourWebsite.starRating = 5

// 변경 사항이 모든 참조✨ 에 반영됨
// 참조라는 것이 "값을 한 군데에 변경해도 여러 곳에 반영됨"
print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)

// ♥️ 구조체 ✨
// struct 는 value 타입 & 클래스와 같은 목적으로 만들어짐
// 클래스보다 큼, 모든 값을 직접 들고 있음 => 메모리는 많이 차지하지만 엄청 빠르다 (성능 굿)
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

class Person1 {
    let birthName: PersonName
    let currentName: PersonName
    var countryOfResidence: String
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        self.birthName = name
        self.currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}


// ♥️ 열거형 ✨
enum ComparisonResult: Int {
    case orderedAscending // 0
    case orderedSame // 1
    case orderedDescending // 2
    // ...3, 4, 5, ...
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    func isProfessional() -> Bool {
        return self == Title.dr || self == Title.prof
    }
    
    var isProfessional1: Bool {
        return self == Title.dr || self == Title.prof
    }
}

let title1 = Title.dr
print(title1.isProfessional())
print(title1.isProfessional1) // 위와 동일함, 왜 둘다 일케 되는건지?

// ♥️ 클로저 ✨
// == 익명 함수, 이름은 없지만 함수의 모양을 가짐 & 리턴 없는 버전
// 클로저를 통해서 유연한 컨베이어식 RX 패턴 프로그래밍이 가능해진다
// 순수 함수를 구현하기 위해 ... 사용한다 ...!!! (이름 있는 클로저가 *함수*)

// 케이스 1️⃣ 아무것도 주지 않고 아무것도 받지 않았어
let printAuthorDetails: () -> Void = {
    let name = PersonName(givenName: "Yunwon", middleName: "Sally", familyName: "Chae")
    let author = Person1(name: name)
    print(author.displayString)
}

printAuthorDetails()

// 케이스 2️⃣ 아무것도 안 줬는데 결과를 받았어 (리턴 있는 버전)
let createAutor: () -> Person1 = {
    let name = PersonName(givenName: "Yunwon", middleName: "Sally", familyName: "Chae")
    let author = Person1(name: name)
    return author
}

let author = createAutor()
print(author.displayString)

// 케이스 3️⃣ 뭘 줬는데 결과를 받지 않았어
// 전달하고 있는 파라미터가 있어서 그걸 구분 짓기 위해서 "in" 을 사용
let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
        let name = PersonName(givenName: given,
                              middleName: middle,
                              familyName: family)
    let author = Person1(name: name)
    print(author.displayString)
}
printPersonsDetails("Keith", "Mary", "Moon")

// 케이스 4️⃣ 인풋도 주고 아웃풋도 받을거야
let createPerson: (String, String, String) -> Person1 = { given, middle, family in
    let name = PersonName(givenName: given,
                          middleName: middle,
                          familyName: family)
    let person = Person1(name: name)
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)

// ♥️ 프로토콜, 인터페이스 (자바의 인터페이스에 해당) ✨
// 프로토콜 이름은 대체로 able 막 이래
// 프로토콜은 혼자 존재할 수 없음 (계약서 같은 거야, 메뉴얼인거임)
// 얠 가져다가 클래스에 붙여넣고, 클래스를 만들고 넣으면 걘 Savable 해져
protocol Saveable {
    var saveNeeded: Bool {get set} // Saveable 의 Property
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

// 상속이랑 비슷해보이는, 내가 갖고 있는 능력에 다른 걸 붙이는...
// 프로토콜은 회사 내 주로 오류를 취합해서 리포트하는 부서에서 사용해
class Person2: Saveable {
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        saveComplete(success: true)
    }
    
    // 언더바 쓰면 내장 함수라는 더 명시적 의미
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}

// 변수를 ♥️ 튜플 tuples ✨로 번들링
// 함수 반환 타입 (이것도 가능하다!), 튜플로 여러 값을 하나로 결합하는 방식 (순서쌍)
func normalizedStarRating(forRating rating: Float,
                          ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5) // 반올림 함수 round
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    
    return (numberOfStars, ratingString)
}

// 컬렉션 데이터 구조 (1)배열Array-O(n) (2)집합Set-중복허용X, 항상 고유값
// (3)사전Dictionary-Key 값으로 Value 가져옴(해시함수로 연결), O(1)

// ♥️ 배열 ✨
// 데이터는 연속된 메모리 영역에 순서대로 저장된다
var moviesToWatch: Array<String> = Array() // Array 클래스이고 객체임
// 배열에 대한 클래스 인스턴스가 만들어짐

// append 는 배열에 추가하는 함수
moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[1]) // 배열의 특정 요소에 접근할 수 있다
print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at: 2)

print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

// let spyMovieSuggestions: Array<String> 아래랑 똑같은 의미
let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions // 배열의 덧셈
print(moviesToWatch.count)
print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
// += 는 원래 있는 문자열(Star Wars: )에 추가로 붙여준다는 의미
// count property 는 반복 횟수
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

// 🤍 array: replaceSubrange method ✨
// moviesToWatch index 2에서 4까지를 starWarsTrilogy 로 스위칭하는 애
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)

// 🤍 array: remove method index ✨ 넘버 주면 걔를 삭제, 리턴함
moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
