//import UIKit
//
//var greeting = "Hello, playground"  // 변경 가능한 값
//
//let phrase: String = "The quick brown fox jumps over the lazy dog" // 변경 불가능한 값
//
//greeting = "Modification"
//
//let numberOfFoxes: Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
//
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
//print("Number of characters in phrase: \(phrase.count)")
//
//let miltilineExplanation: String = """
//test1
//test2
//test3
//"""
//
//let phrasesAreEqal = phrase == anotherPhrase
//print(phrasesAreEqal)
//
//let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)

//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
////dayOfTheWeek = nil // 컴파일 오류 발생
//
//var numberOfFingersHeldUpByFinn: Int?
//numberOfFingersHeldUpByFinn = nil
//numberOfFingersHeldUpByFinn = 3
//
////print(numberOfFingersHeldUpByFinn)
//print(numberOfFingersHeldUpByFinn ?? "Unkown") // nil 이면 "Unknown" 반환
//
////let lastNumberOfFIngersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // 위험할 수 있음
////print(lastNumberOfFIngersHeldUpByFinn)
//

//func fullName(givenName: String, middleName: String = "", familyName: String) -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//}
//
//let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
//let hisFullName = fullName(givenName: "Jay", familyName: "Shin")
//print(myFullName)
//print(hisFullName)

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
