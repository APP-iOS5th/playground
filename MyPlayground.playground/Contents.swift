//import UIKit
//
//var greeting = "Hello, playground"
//let phrase: String = "The quick yellow cat is dodo from dodonara"
//
//greeting = "Modification"
//
//let numberOfFoxes:Int = 1
//let numberOfAnimals: Int = 2
//
//let averagrCharacterPerWord: Float = (3+3+3+4+5+5+7) / 9
//
//var anotherPhrase = phrase
//
//anotherPhrase = "Modification"
//
//var phraseInfo = "The phrase" + " has: "
//print(phraseInfo)  //"The phrase has: "
//
//phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
//
//print(phraseInfo)
//
//print("Number of characters in phrase: \(phrase.count)")
//
//let multilineExplanation = """
//Why is the following phrase often used?
//"the quick dodo is here"
//this is dodo from dodonara.
//"""
//
//let phrasesAreEqual = phrase == anotherPhrase
//print(phrasesAreEqual) //false
//
//let phraseHas42Characters = phrase.count == 40 + 2
//print(phraseHas42Characters) //true

//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
////dayOfTheWeek = nil //컴파일 오류 발생
//
//var numverOfFingersHeldUpByFinn: Int?
//numverOfFingersHeldUpByFinn = nil
////numverOfFingersHeldUpByFinn = 3
//
//print(numverOfFingersHeldUpByFinn ?? "Unknown")
//
//let lastNumberOfFingersGeldUpFinn: Int = numverOfFingersHeldUpByFinn! // 위험할 수 있음

func fullName(giveName: String, middleName: String, familyName: String) -> String {
    return "\(giveName) \(middleName) \(familyName) !"
}

let myfullName = fullName(giveName: "keith", middleName: "David", familyName: "Moon")
print(myfullName)
