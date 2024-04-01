import UIKit

/*

/// 문자열 상수 및 변수 선언
var greeting = "Hello, playground"
let phrase: String = "The quich brown fox jums over the lazy dog"

greeting = "Hi"
//phrase = "Hi" //Cannot assign to value: 'phrase' is a 'let' constant

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

/// Float 계산
let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

/// 가변 변수
var anotherPhrase = phrase
anotherPhrase = "The quick brown jumps over the lazy "
print(phrase) // "The quick brown fox jumps over the lazy dog"
print(anotherPhrase) // "The quick brown jumps over the lazy "

/// 문자열 연결 및 삽입
var phraseInfo = "The phrase" + "has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

/// 문자 수 세기
print("Number of characters: \(phraseInfo.count)")

/// 다중 줄 문자열 리터럴
let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

/// 부울 비교
let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual) // false
let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters) // true

/// Swift 에ㅅ 옵셔널과 강제 언래핑 사용하기
var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
// dayOfTheWeek = nil // 컴파일 오류 발생

var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "Unknown")

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)


/// 함수
func fullName(givenName: String, middleName: String = "Unknown", familyName: String)
-> String {
    return "\(givenName) \(middleName) \(familyName)" /// 함수 변경
}

let myFullName = fullName(givenName: "kim", familyName: "song")
print(myFullName)

/// 매개변수 오버로딩
/// Swift는 매개변수 오버로딩을 지원하여, 같은 이름의 함수가 다른 매개변수를 가질 수 있습니다.
func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}
func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5, 10)
print(combinedString) // Finnley Moon
print(combinedInt) // 15


/// 객체클래스에서 기능 캡슐화하기
class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    // 함수
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    // 프로퍼티 (변수)
    var dispalyString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
    
}

var person = Person(givenName: "Song", middleName: "K", familyName: "m")



final class Family: Person {
    let relationship: String
    
    init(givenName: String, middleName: String, familyName: String,relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName) // 나의 부모클래스 범위.. 어., 호출
    }
}

var family = Family(givenName: "k", middleName: "k", familyName: "k", relationship: "k")
print(family)

class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(moveTitle: String, starRating: Int) {
        self.movieTitle = moveTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(moveTitle: "HarryPotter", starRating: 4)

//소설 미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceRoreviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating) //4
print(referenceToReviewOnTwitter.starRating) //4

// 수정하면 전체가 수정 됨
shawshankReviewOnYourWebsite.starRating = 5

print(referenceToReviewOnTwitter.starRating) //5
print(referenceToReviewOnTwitter.starRating) //5

/// 열거형
enum ComparisonResult: Int {
    case orderedAscending //0
    case orderedSame //1
    case orderedDescending //2
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProFessional: Bool {
        return self == Title.dr || self == Title.prof
    }
}

let title = Title.mr

print(title.isProFessional) //false
 

struct PersonName { //value 타입
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

class Person { //reference 타입
     
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


//클로저 Closures
let printAuthorDetails: () -> Void = { //반환할 피룡 없을 때 Void
    let name = PersonName(givenName: "Song", middleName: "k", familyName: "im")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)

let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    return person
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)


///프로토콜
///이름이 대부분 ...able 이랍니다j
///스스로 존재 할 수 없음
protocol Saveable {
    var saveNeeded: Bool {get set}
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    //....
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
     
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) { //밖에서도 사용하고 싶어서 escaping을 사용..?
        ///클로저를 인수로 받으면 그 클로저는 함수 안에서 실행이 종료되는데
        ///이스케이핑 키워드를 쓰면 함수가 다 끝나고 함수밖에서 실행된다고 보면댐..
         saveHandler = handler
         saveComplete(success: true)
    }
     
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}
*/

//별점 정규화 함수
func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars, ratingString)
}

