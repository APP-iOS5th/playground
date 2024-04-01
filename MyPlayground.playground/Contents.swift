import UIKit

var greeting = "Hello, playground"


let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes : Int = 1
let numberOfAnimals : Int = 2
let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+3)/9

var anotherPhrase = phrase
anotherPhrase = "Modification"

//var도 가능 let도 가능
var phraseInfo = "The phrase"+"has : "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)


print("Number of characters in phrase: \(phrase.count)")

let multilineExplanation = """
why is ther following phrase often used?
"Tje quick brown fox jumps over the lazy dog"
thie phrase contatins every letter in the alphabet.
"""

let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)


var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil //컴파일 오휴 발생 왜냐하면 스위프트는 nil를 런타임 오류를 최소화 하기 위해 사용을 못함.

//옵셔널
var numberOfFingersHeldUpByFinn: Int?
//numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "Unknown")
let lastNumberOfFingersHeldUpBYFinn: Int = numberOfFingersHeldUpByFinn! //위험함 왜냐하면 없는 값을 있는 값처럼 넣을려고해서


func fullName(givenName: String, middleName: String, familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon");

print(myFullName)
