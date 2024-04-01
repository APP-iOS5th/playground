import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase = phrase

anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

print("Number of characters in phrase: \(phrase.count)")

let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

let pharseAreEqual = phrase == anotherPhrase
print(pharseAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)



var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil


var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "Unknown")


let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn!
print(lastNumberOfFingersHeldUpByFinn)

var legalName: String!
legalName = nil
legalName = "Alissa Jones"



func fullName(givenName: String,
middleName: String,
familyName: String) -> String {
return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
print(myFullName)


func fullName2(givenName: String,
middleName: String = "Unknown",
familyName: String) -> String {
return "\(givenName) \(middleName) \(familyName)"
}

let myFullName2 = fullName2(givenName: "Keith", familyName: "Moon")
print(myFullName2)



func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5, 10)
print(combinedString)
print(combinedInt)

