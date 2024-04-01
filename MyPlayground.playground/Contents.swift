import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+3+5+5+3+5)/9

var anotherPhrase = phrase
anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
//print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals "

//print(phraseInfo)

//print("Number of characters in phrase: \(phrase.count)")

let multilineEx = """
우와 여러줄을 입력해도 에러가
안뜬답니다. 심지어 "이것도 사용가능"
이랍니다!
"""

//print(multilineEx)

let phraseAreEqual = phrase == anotherPhrase
//print(phraseAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)



func fullName(givenName: String, middleName: String = " ", familyName: String)
    -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "heo", familyName: "yeol")

//print(myFullName)


func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Hoe", "Won")
let combinedInt = combine(5, 10)

print(combinedString)
print(combinedInt)

