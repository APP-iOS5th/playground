import UIKit


//MARK: - Swift에서 문자열, 정수, 부동 소수점 수 및 부울 사용하기
var greeting = "Hello, playground"
let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

print(greeting)
print(phrase)

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+3+3+3+3) / 9

var anotherPhrase = phrase

anotherPhrase = "Modification"

var phraseInfo = "The phrase" + "has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

print("Number Of Phrase : \(phrase.count)")

let multilineExplanation = """
asdasdasdasdasdasdasdadasdadqdwqdqwd
asdasdasd
asdasdasdasdasd
asdasdasd
"""

let phraseAreEqual = phrase == anotherPhrase
print(phraseAreEqual)

let phraesHas43Character = phrase.count == 40 + 3
print(phraesHas43Character)


//MARK: - Swift에서 옵셔널과 강제 언래핑 사용하기
var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil // 컴파일 오류 발생

var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "Unknown")

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // 위험할 수 있음

var legalName: String!
legalName = nil
legalName = "Alissa Jones"


//MARK: - 함수에서 코드 재사용
func fullName(givenName: String,
              middleName: String,
              familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Keith",
                          middleName: "David",
                          familyName: "Moon")
print(myFullName) // Keith David Moon

//func fullName(givenName: String,
//              middleName: String,
//              familyName: String = "Moon") -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//}

func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}
func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}
let combinedString = combine("Finnley",
                             "Moon")
let combinedInt = combine(5, 10)
print(combinedString) // Finnley Moon
print(combinedInt) // 15


//MARK: - 객체 클래스에서 기능 캡슐화하기

//class Person {
//    
//    let givenName: String
//    let middleName: String
//    let familyName: String
//    var countryOfResidence: String = "UK"
//    
//    init(givenName: String, middleName: String, familyName: String) {
//        self.givenName = givenName
//        self.middleName = middleName
//        self.familyName = familyName
//    }
//    
//    var displayString: String {
//        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
//    }
//    
//    func fullName() -> String {
//        return "\(givenName) \(middleName) \(familyName)"
//    }
//    
//}

//final class Friend: Person {
//    var whereWeMet: String?
//    override var displayString: String {
//        let meetingPlace = whereWeMet ?? "Don't know where we met"
//        return "\(super.displayString) - \(meetingPlace)"
//    }
//}

//final class Family: Person {
//    let relationship: String
//    
//    init(givenName: String, middleName: String, familyName: String = "Moon",  relationship: String) {
//        
//        self.relationship = relationship
//        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
//    }
//    
//    override var displayString: String {
//        return "\(super.displayString) - \(relationship)"
//    }
//}
//
//let steve = Person(givenName: "Steven", middleName: "Paul", familyName: "Jobs")
//
//let richard = Friend(givenName: "Richard", middleName: "Adrian", familyName: "Das")
//richard.whereWeMet = "Worked together at Travel Supermarket"
//
//let finnly = Family(givenName: "Finnly", middleName: "David", relationship: "Son")
//
//let dave = Family(givenName: "Dave", middleName: "deRidder", familyName: "Jones", relationship: "Father-In-Raw")
//dave.countryOfResidence = "US"
//
//print(steve.displayString)
//
//print(richard.displayString)
//
//print(finnly.displayString)
//
//print(dave.displayString)


//MARK: - 참조 타입(reference types)
class MovieReview {
    let movieTitle: String
    var starRating: Int // 5점 만점
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}
// 리뷰 작성
let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)
// 소셜 미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating) // 3
print(referenceToReviewOnFacebook.starRating) // 3

// 리뷰 재고
shawshankReviewOnYourWebsite.starRating = 5

// 변경 사항이 모든 참조에 반영됨
print(referenceToReviewOnTwitter.starRating) // 5
print(referenceToReviewOnFacebook.starRating) // 5


//MARK: - 열거형(enums)을 사용하여 값 열거하기
//enum Title {
//    case mr
//    case mrs
//    case mister
//    case miss
//    case dr
//    case prof
//    case other
//}

let title1 = Title.mr

let title2: Title
title2 = .mr

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Master"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other // "other"로 추론됨
    
    func isProfessional() -> Bool {
        return self == .dr || self == .prof
    }
    
    var isProfessional1: Bool {
        return self == .dr || self == .prof
    }
    
}
print(title1.isProfessional())
print(title1.isProfessional1)

//enum Title {
//    case mr
//    case mrs
//    case mister
//    case miss
//    case dr
//    case other(String)
//}

var firstCitizen = """
함수의 특징과 1급객체의 조건
Swift의 언어 패러다임에 따라, 함수는 하나의 객체(Object)입니다.
각각의 함수(객체)는 서로 주고-받으며 자료를 처리할 수 있습니다.
그렇기 때문에, 함수는 '1급 시민(First-Citizen)'의 조건을 충족합니다.
 

함수가 1급 시민, 즉 1급 객체가 되기 위해선 3가지 조건이 있습니다.
변수 또는 상수에 함수를 할당할 수 있어야 한다. (Binding)
함수의 반환값(Return)으로 함수(객체)를 사용할 수 있어야 한다.
함수의 매개변수(Parameters)로 함수(객체)를 전달할 수 있어야 한다. (Callback)
"""


//MARK: - 클로저(closures)로 기능 전달

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

//class Person {
//     
//    let birthName: PersonName
//    var currentName: PersonName
//    var countryOfResidence: String
//     
//    init(name: PersonName, countryOfResidence: String = "UK") {
//        birthName = name
//        currentName = name
//        self.countryOfResidence = countryOfResidence
//    }
//     
//    var displayString: String {
//        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
//    }
//}

////1. 저자의 상세정보를 출력하는 클로저 정의 (입력X, 출력X)
//let printAuthorsDetails: () -> Void = {
//    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
//    let author = Person(name: name)
//    print(author.displayString)
//}
//printAuthorsDetails()
//
//func noReturn() {
//    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
//    let author = Person(name: name)
//    print(author.displayString)
//}
//
//
////2.Person 객체를 생성하는 클로저 정의 (입력 없음, Person 출력)
//let createAuthor: () -> Person = {
//    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
//    let author = Person(name: name)
//    return author
//}
//let author = createAuthor()
//print(author.displayString)
//
//func personPrint() -> Person {
//    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
//    let author = Person(name: name)
//    return author
//}
//
//
////3. 사람의 세부 사항을 출력하는 클로저 정의 (String 입력, 출력 없음)
//let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
//    let name = PersonName(givenName: given, middleName: middle, familyName: family)
//    let person = Person(name: name)
//    print(person.displayString)
//}
//printPersonsDetails("Kathleen", "Mary", "Moon")
//
//func inputString(given: String, middle: String, family: String) {
//    let name = PersonName(givenName: given, middleName: middle, familyName: family)
//    let person = Person(name: name)
//    print(person.displayString)
//}


//MARK: - 프로토콜을 사용하여 인터페이스 정의하기

protocol Saveable {
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        saveComplete(success: true)
    }
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}
