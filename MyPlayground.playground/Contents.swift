import UIKit

var greeting = "Hello, playground"
greeting

// 상수 선언(불변)
let phrase: String = "The quick brown fox jumps over the lazy dog"
//phrase = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2
// 부동소수점
let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

// 변수 재할당
var anotherPhrase = phrase
anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)
// 문자열 보간법
phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

// 객체 property 사용
print("Number of characters in phrase: \(phrase.count)")
// 객체 method 사용
print("Number of characters in phrase: \(phrase.uppercased())")

// 멀티 라인
let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

// Boolean
let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual)

let phraseHas43Cgaracters = phrase.count == 40 + 3
print(phraseHas43Cgaracters)


var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil // 컴파일 오류 발생
// Optional 변수
var numberOfFingersHeldUpByFinn: Int? // nil 가능
//numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn)
print(numberOfFingersHeldUpByFinn ?? "Unknown")

// 강제 언래핑(nil 값이 없을 걸 확신할 때만 사용)
let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)

var legalName: String!
legalName = nil
legalName = "Alissa Jones"


// 함수
func fullName(givenName: String, middleName: String = " ", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Keith", middleName: "David0", familyName: "Moon")
print(myFullName)

// 파라미터 오버로딩
func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Jihye", "Park")
let combinedInt = combine(5, 10)

print(combinedString)
print(combinedInt)


// 클래스
class Pperson {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR" // 변수에 기본값이 존재하기 때문에 초기화하지 않아도 됨
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    //method
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    // property
    var displayString: String {
//        var countryOfResidence = "?"
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
}

// 클래스 인스턴스 생성
var person = Pperson(givenName: "Jihye", middleName: "", familyName: "Park")

// 상속
final class Family: Pperson {
    let relationship: String
    
    init(givenName: String, middleName: String, familyName: String, relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Jihye", middleName: "", familyName: "Park", relationship: "Daughter")

// 참조 타입
class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

// 소셜 미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating) // 3
print(referenceToReviewOnFacebook.starRating) // 3

shawshankReviewOnYourWebsite.starRating = 5

print(referenceToReviewOnTwitter.starRating) // 5
print(referenceToReviewOnFacebook.starRating) // 5

referenceToReviewOnTwitter.starRating = 10
print(shawshankReviewOnYourWebsite.starRating) // 10
print(referenceToReviewOnFacebook.starRating) // 10


// 열거형
enum ComparisonResult: Int {
    case orderedAscendig // 0
    case orderedSame // 1
    case orderedDescending // 2
    // ... 3, 4, 5,
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
//    var isProfessional: Bool {
//        return self == Title.dr || self == Title.prof
    }
}

let title1 = Title.mr

print(title1.isProfessional()) // false


// 구조체
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


// 클로저
// 리턴 타입 없을 때
let printAuthorDetails: () -> Void = {
    let name = PersonName(givenName: "Jihye", middleName: "", familyName: "Park")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()

// 리턴 타입 있을 때
let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Jihye", middleName: "", familyName: "Park")
    let author = Person(name: name)
    return author
}

let author = createAuthor()
print(author.displayString)

// String inputs, no output
let printPersonsDetails: (String, String, String) -> Void = {
    given, middle, family in
        let name = PersonName(givenName: given, middleName: middle, familyName: family)
        let author = Person(name: name)
        print(author.displayString)
}

printPersonsDetails("Jihye", "", "Park")

// String inputs, output
let createPerson: (String, String, String) -> Person = { given,
  middle, family in
    let name = PersonName(givenName: given,
                          middleName: middle,
                          familyName: family)
    let person = Person(name: name)
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)
