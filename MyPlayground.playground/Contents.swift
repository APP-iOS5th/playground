import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

//같은 값이라고 해도 이미 패키징이 끝난 상품이기 때문에 새로 값을 넣을 수 없다
//phrase = "The quick brown fox jumps over the lazy dog."

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase = phrase

anotherPhrase = "Modificaiton"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo) // "The phrase has: "

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo) // "The phrase has: 1 fox and 2 animals

print("Number of characters in phrase: \(phrase.count)")

print("Number of characters in phrase: \(phrase.uppercased())")

let multilineExaplanation: String = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual) //false

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters) //true


var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuseday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil //컴파일 오류 발생
// 스위프트는 기본적으로 null을 못 쓰게 막음

var numberOfFingersHeldupByFinn: Int?
numberOfFingersHeldupByFinn = nil
numberOfFingersHeldupByFinn = 3

print(numberOfFingersHeldupByFinn ?? "")

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldupByFinn! //강제 언래핑. 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)

//function 정의
func fullName(givenName: String, middleName: String, familyName:String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}
//함수를 선언했을 뿐 실행하지 않았으므로 아무 일도 일어나지 않음
//선언부 한군데만 고쳐주면 실행부가 모두 수정되므로 작업의 효율성이 증대됨. 함수를 쓰는 이유 중 1개!

//함수를 실행하는 것: 표현식. 표현식에는 등호가 들어간다!
let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon");
//너무 길다
print(myFullName)

//함수 변경! 성을 모르는 사람도 이름을 출력해주는 함수로 변경해보자.

//함수 선언부에 등호가 들어가면, 만약 값이 없으면 ㅇㅇ로 채워줘라는 의미
func niceFullName(givenName: String, middleName: String = "Unknown", familyName:String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
    }
    
let yourFullName = niceFullName(givenName: "Keith", familyName: "Moon");

print(yourFullName)

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

//class 설명
class Person {
    let birthName: PersonName
    var currentName: PersonName
    var countryOfResidence: String = "KR"
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence))"
    }
}

//var person = Person(givenName: "Joohyun", middleName: "Jude", familyName: "Song")

//family라는 클래스는 Person보다 좀 더 상세한 기록이 가능해지는 것
//final class Family: Person {
//    let relationship: String
//    
//    init(givenName: String,
//         middleName: String,
//         familyName: String,
//         relationship: String) {
//        self.relationship = relationship
////        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
//    }
//}

//var family = Family(givenName: "Joohyun", middleName: "Jude", familyName: "Song", relationship: "Second Sis")


//참조 타입~~!!
class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

//소셜미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating) //3
print(referenceToReviewOnFacebook.starRating) //3

shawshankReviewOnYourWebsite.starRating = 5

//값을 한군데만 변경해도, 변경 사항이 모든 참조에 반영됨
print(referenceToReviewOnTwitter.starRating) //5
print(referenceToReviewOnFacebook.starRating) //5

//부동산 등기와 비슷함. 집을 거래한다고 집을 들고가지 않음. 등기 들고 가서 등기 수정하면 되는 것.

//enum 열거 설명!
enum ComparisonResult : Int {
    case orderedAscending //0
    case orderedSame //1
    case orderedDescending //2
    // ... 3, 4, 5
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfessional: Bool {
        return self == Title.dr || self == Title.prof
    }
}

let title1 = Title.mr

print(title1.isProfessional) //false


//closure?
let printAuthorDetails: () -> Void = {
    let name = PersonName(givenName: "Joohyun", middleName: "Jude", familyName: "Song")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Daniel",
                          middleName: "Philip",
                          familyName: "Henney")
    let author = Person(name: name)
    return author
}

let author = createAuthor()
print(author.displayString)

// String input and no output
let printPersonsDeatils: (String, String, String) -> Void = {
    given, middle, family in
    let name = PersonName(givenName: given,
                          middleName: middle,
                          familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}

printPersonsDeatils("Katheleen", "Mary", "Moon")

let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: given,
                         middleName: middle,
                         familyName: family)
    let person = Person(name: name)
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)


protocol Saveable {
      var saveNeeded: Bool { get set }
      func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

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

//저는 그만 정신을 잃고 말았습니다

import Foundation

func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String)
{
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Moive"
    return (numberOfStars,ratingString)
}

//배열
var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[1])
print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at: 2)

print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

//Array<String> == [String] 똑같은 거힘!
let spyMovieSuggstions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggstions
print(moviesToWatch.count)
print(moviesToWatch)

//초기화를 이렇게 할 수 있음! 서브제목만 추가해서 사용한 것.
var starWarsTrilogy = Array<String>(repeating: "Star wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

//배열 2~4까지를 스타워즈 트릴로지로 스위치하는 구문. replaceSubrange라는 메서드!
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)
print(moviesToWatch)

//배열 일부 삭제
moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
print(moviesToWatch)
