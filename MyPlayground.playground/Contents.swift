import UIKit

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

