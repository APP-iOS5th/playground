import UIKit

// var : 변수
var greeting = "Hello, playground"
greeting = "Modification"

// let : 상수 -> 값 변경시 에러
let phrase: String = "The quick brown for jumps voer the lazy dog"
// phrase = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimal: Int = 2

let averageCharactersPerWord: Float = (3+5+9+2) / 9

var anotherPhrase = phrase
anotherPhrase = "Modification"

var phraseInfo = "The phrase" + "has : "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimal) animals"
print(phraseInfo)

print("Number of character in phrase: \(phrase.count)")

let multilineExplantion = 
"""
--MultiLine--
TEST1
TEST2 "큰따움표"
TEST3
--MultiLine--
"""
print(multilineExplantion)

let phraseAreEqual = phrase == anotherPhrase
print(phraseAreEqual) // false

let phraseHas43Charaters = phrase.count == 40+3
print(phraseHas43Charaters) // true

// -------------------- //

var dayOfWeek: String = "Monday"
// dayOfWeek = nil

var numverOfFinn: Int?
numverOfFinn = nil
numverOfFinn = 3

print(numverOfFinn) // Optional 객체 리턴
print(numverOfFinn ?? "Unknown") // 값 출력 or nil일 경우 Unkown 출력

let lastNumOfFinUpFinn: Int = numverOfFinn! // 위험! -> 강제 unrwap
print(lastNumOfFinUpFinn)


// ---------- //

func fullName(givenName: String, middleName : String = " ", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName) !"
}
var myFullName = fullName(givenName: "A", middleName: "B", familyName: "C")
print(myFullName)

myFullName = fullName(givenName: "A", familyName: "C")
print(myFullName)


// ---------------//


func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}
func combine(_ integer1: Int, _ Integer2: Int) -> Int {
    return integer1 + Integer2
}

let combinedString = combine("combineA", "combineB")
let combinedInteger = combine(1,2)

print(combinedString)
print(combinedInteger)







































