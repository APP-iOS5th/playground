import UIKit

var greeting = "Hello, Swift"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes:Int = 1

let numberOfAnimals:Int = 2

let averageCharactersPerWord:Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase:String = phrase

anotherPhrase = "Modification"

var phraseInfo:String = "The Phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

print("Number of character in phrase: \(phrase.count)") //count는 문자열의 갯수를 알려주는 프로퍼티

let multilineExplanation:String = """
Why is the following pgrase often user?
"The quick brown fox jumps over the lazy dog"
This phrase contains every latter in the. lphabet.
"""
print(multilineExplanation)

let phrasesAreEqual:Bool = phrase == anotherPhrase
print(phrasesAreEqual)

let phrasesHas43Characters:Bool = phrase.count == 40 + 3
print(phrasesHas43Characters)

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil  -> nill값은 String에 넣을 수 없음

var numberOfFingersHeldUpByFinn:Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "Unknow" )

let lastNumberOfFingersHeldUpByFinn:Int = numberOfFingersHeldUpByFinn!
print(lastNumberOfFingersHeldUpByFinn)


//함수 재사용
func fullName (_ givenName:String, _ middleName:String = "Unknown", _ familyName:String)-> String {
    return "\(givenName) \(middleName) \(familyName) !"
}

let myFullName = fullName("Sam","","Kim")

print(myFullName)


//매개변수 오버로딩
func combine (_ giveName: String, _ familyName: String) -> String {
    return "\(giveName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5,10)

print(combinedString)
print(combinedInt)

//구조체
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
class PPerson {
     
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


//객체 클래스에서 기능 캡슐화하기
class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    

    
    init(giveName: String, middleName: String, familyName: String) {
        self.givenName = giveName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func personFullName ()-> String {
        return "\(givenName) \(middleName) \(familyName) !"
    }
    
    var displayString: String {
        countryOfResidence = "Seoul"
        return "\(self.personFullName()) - Location: \(self.countryOfResidence)"
    }
    
}

var person = Person(giveName: "SeongKook", middleName: "Sam", familyName: "KIM") //Class 인스턴스

print(person.personFullName())
print(person.displayString)


// Family 객체 생성 - final 으로 수정하겠댜..?
final class Family: Person {
    let relationship: String
    
    init(giveName: String, middleName: String, familyName: String, relationship: String) {
        // Self 나 자신
        self.relationship = relationship
        // Super 부모 부르는 -> Person 객체 부르기
        super.init(giveName: giveName, middleName: middleName, familyName: familyName)
    }
    
    
}

var family = Family(giveName: "Reo", middleName: "Pass", familyName: "KIM", relationship: "Broter")

print(family.personFullName())
print(family.givenName)

// 참조타입 특징
class MovieReview {
    let movieTitle: String
    var startRating: Int
    
    init(movieTitle:String, startRating:Int) {
        self.movieTitle = movieTitle
        self.startRating = startRating
    }
}

let shawShankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemtion", startRating: 3)

// 소셜 미디어에 개시
let referenceToReviewOnTwitter = shawShankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawShankReviewOnYourWebsite

shawShankReviewOnYourWebsite.startRating = 5

print(referenceToReviewOnTwitter.startRating)
print(referenceToReviewOnFacebook.startRating)




//열거형 (enum)

enum ComparisonResult: Int {
    case orderedAscending //0
    case orderedSame //1
    case orderedDescending //2
    // .. 3, 4, 5
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    func isProfessioal() -> Bool {
        return self == Title.dr || self == Title.prof
    }

}

let title1 = Title.mr

print(title1.isProfessioal())



// 클로저
