import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOffFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrese = phrase

anotherPhrese = "Modification"

var phraseInfo = "The phrase" + "has: "
print(phraseInfo) // "The phrase has:"

phraseInfo = phraseInfo + "\(numberOffFoxes) fox and \(numberOfAnimals)"
print(phraseInfo) //"The phrase has: 1 fox and 2 animals"


print("Number of characters in. hrase : \(phrase.count)")


let multilineExplanetion = """
Why is the following phrase often ued?
"The quick brown fox jumps over the lazy dog"
This phrae contains every letter in the alphabet.
"""

let phrasesAreEqual = phrase == anotherPhrese
print(phrasesAreEqual)

let phrasehas43Characters = phrase.count == 40 + 3
print(phrasehas43Characters)

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednessday"
//dayOfTheWeek = nil // 컴파일러 애러

var numberOfFingersheldUpByFinn: Int?
numberOfFingersheldUpByFinn = nil
numberOfFingersheldUpByFinn = 3

print(numberOfFingersheldUpByFinn ?? "Unknown")

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersheldUpByFinn! // 언렙핑
print(lastNumberOfFingersHeldUpByFinn)

func fullName (givenName: String, middleName: String, familyname: String) -> String {
    return "\(givenName) \(middleName) \(familyname) ! "
}

let myFullName = fullName(givenName: "keith", middleName: "David", familyname: "Moon")

