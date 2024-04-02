import UIKit
//
//var greeting = "Hello, playground"
//
////값 변경 불가
//let phrase: String = "The quick brown fox jumps over the lazy dog"
//
//// 값 변경 가능
//greeting = "Modification"
//
//let numberOfFoxes: Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharacterPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
//
//// 상수를 변수에 저장하여 값 변경
//var anotherPhrase = phrase
//
//anotherPhrase = "Modification"
//
//var phraseInfo = "The phrase" + " has: "
//print(phraseInfo)
//
//phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
//print(phraseInfo)
//
//// 띄어쓰기 포함
//print("Number of characters in phrase: \(phrase.count)")
//
//// 문자열 쓸 때 엔터 쓰는 방법
//let multilineExplanation = """
//Why is the following phrase often used?
//"The quick brown fox jumps over the lazy dog"
//This phrase contains every letter in the alphabet.
//"""
//
//let phrasesAreEqual = phrase == anotherPhrase
//print(phrasesAreEqual)
//
//let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)
//

//--------//
//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
////dayOfTheWeek = nil // 컴파일 오류 발생
//
//var numberOfFingersHeldUpByFinn: Int?
//numberOfFingersHeldUpByFinn = nil
//numberOfFingersHeldUpByFinn = 3
//
//print(numberOfFingersHeldUpByFinn ?? "Unknown")
//
//let lastNumberOfFingersHeldByFinn: Int = numberOfFingersHeldUpByFinn!
//print(lastNumberOfFingersHeldByFinn)


//func fullName(givenName: String, middleName: String = " ", familyName: String) -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//}
//
//let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
//
//print(myFullName)


//func combine(_ givenName: String, _ familyName: String) -> String {
//    return "\(givenName) \(familyName)"
//}
//
//func combine(_ integer1: Int, _ integer2: Int) -> Int {
//    return integer1 + integer2
//}
//
//let combinedString = combine("Finnley", "Moon")
//let combinedInt = combine(5, 10)
//print(combinedString) // Finnley Moon
//print(combinedInt) // 15


//객체 클래스에서 기능 캡슐화하기
//class Person {
//    let givenName: String
//    let middleName: String
//    let familyName: String
//    var countryOfResidence: String = "KR"
//
//    init(givenName: String, middleName: String, familyName: String) {
//        self.givenName = givenName
//        self.middleName = middleName
//        self.familyName = familyName
//    }
//    // 앞 self는 클래스 꺼, 뒤에꺼는 init에서 받는 값
//
//    func fullName() -> String {
//        return "\(givenName) \(middleName) \(familyName)"
//    }
//
//    var displayString: String {
//        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
//    }
//}
//
//var person = Person(givenName: "Seokyung", middleName: "Yeah", familyName: "Lee")
//
//
//
//final class Family: Person {
//    let relationship: String
//
//    init(givenName: String, middleName: String, familyName: String, relationship: String) {
//        self.relationship = relationship
//        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
//    }
//}
//
//var family = Family(givenName: "Seokyung", middleName: "Yeah", familyName: "Lee", relationship: "Daughter")

// 클래스는 참조 타입
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
//// 소셜 미디어에 게시
//let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
//let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite
//
//shawshankReviewOnYourWebsite.starRating = 5
//
//print(referenceToReviewOnTwitter.starRating)
//print(referenceToReviewOnFacebook.starRating)


// 열거형
//enum ComparisonResult: Int {
//    case orderedAscending // 0
//    case orderedSame // 1
//    case orderedDescending // 2
//}
//
//enum Title: String {
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "Master"
//    case miss = "Miss"
//    case dr = "Dr"
//    case prof = "Prof"
//    case other
//
//    var isProfessional: Bool {
//        return self == Title.dr || self == Title.prof
//    }
//}
//
//let title1 = Title.mr
//print(title1.isProfessional) // false


// 구조체
//struct PersonName {
//    let givenName: String
//    let middleName: String
//    var familyName: String
//
//    func fullName() -> String {
//        return "\(givenName) \(middleName) \(familyName)"
//    }
//
//    mutating func change(familyName: String) {
//        self.familyName = familyName
//    }
//}
//
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



// 클로저
//let createPerson: (String, String, String) -> Person = { given,
//  middle, family in
//    let name = PersonName(givenName: given,
//                          middleName: middle,
//                          familyName: family)
//    let person = Person(name: name)
//    return person
//}
//let felix = createPerson("Felix", "Robert", "Moon")
//print(felix.displayString)



// 프로토콜
//protocol Saveable {
//      var saveNeeded: Bool { get set }
//      func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
//}


//class Person: Saveable {
//    //....
//    var saveHandler: ((Bool) -> Void)?
//    var saveNeeded: Bool = true
//
//    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
//         saveHandler = handler
//         // Send person information to remove database
//         // Once remote save is complete, it calls
//           // saveComplete(Bool)
//         // We'll fake it for the moment, and assume the save is
//           // complete.
//         saveComplete(success: true)
//    }
//
//    func saveComplete(success: Bool) {
//        saveHandler?(success)
//    }
//}

// 튜플
//func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
//    let fraction = rating / total
//    let ratingOutOf5 = fraction * 5
//    let roundedRating = round(ratingOutOf5)
//    let numberOfStars = Int(roundedRating)
//    let ratingString = "\(numberOfStars) Star Movie"
//    return (numberOfStars,ratingString)
//}
