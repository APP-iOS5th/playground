import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhase = phrase

anotherPhase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals)  animals"
print(phraseInfo)

print("Number of characters in phrase: \(phrase.count)")


let multilineExplanation = """
 Why is the following phrase often used?
 "The quick brown fox jumps over the lazy dog"
 this Phrase contains every letter in the alphabet.
 """

let phrasesAreEqual = phrase == anotherPhase
print(phrasesAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil


var numberOfFingerHeldUpByFinn: Int?
numberOfFingerHeldUpByFinn = nil
//numberOfFingerHeldUpByFinn = 3

print(numberOfFingerHeldUpByFinn ?? "Unknown")

//let lastNumberOfFingerHeldUpByFinn: Int = numberOfFingerHeldUpByFinn!
//print(lastNumberOfFingerHeldUpByFinn)


func fullName(giveName: String, middleName: String = " ", familyName: String) -> String {
    return " \(giveName) \(middleName) \(familyName)"
}

let myFullName = fullName(giveName: "Keith", familyName: "Moon")

print(myFullName)


func combine(_ giveName: String, _ familyName: String) -> String {
    return "\(giveName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5, 10)

print(combinedString)
print(combinedInt)
