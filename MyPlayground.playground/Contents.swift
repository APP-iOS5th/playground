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
