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
