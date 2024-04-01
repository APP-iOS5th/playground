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

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "UK"
    
    init(givenName: String, middleName: String, familyName: String, countryOfResidence: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
    return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
    
    func fullName() -> String {
    return "\(givenName) \(middleName) \(familyName)"
    }
    
    final class Friend: Person {
        var whereWeMet: String?
        override var displayString: String {
        let meetingPlace = whereWeMet ?? "Don't know where we met"
        return "\(super.displayString) - \(meetingPlace)"
        }
    }
}



