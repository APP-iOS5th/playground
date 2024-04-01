import UIKit

var greeting = "Hello, Swift"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes:Int = 1

let numberOfAnimals:Int = 2

let averageCharactersPerWord:Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase:String = phrase

anotherPhrase = "Modification"

var phraseInfo:String = "The Phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

print("Number of character in phrase: \(phrase.count)") //count는 문자열의 갯수를 알려주는 프로퍼티

let multilineExplanation:String = """
Why is the following pgrase often user?
"The quick brown fox jumps over the lazy dog"
This phrase contains every latter in the. lphabet.
"""
print(multilineExplanation)

let phrasesAreEqual:Bool = phrase == anotherPhrase
print(phrasesAreEqual)

let phrasesHas43Characters:Bool = phrase.count == 40 + 3
print(phrasesHas43Characters)

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil  -> nill값은 String에 넣을 수 없음

var numberOfFingersHeldUpByFinn:Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "Unknow" )

let lastNumberOfFingersHeldUpByFinn:Int = numberOfFingersHeldUpByFinn!
print(lastNumberOfFingersHeldUpByFinn)


//함수 재사용
func fullName (_ givenName:String, _ middleName:String = "Unknown", _ familyName:String)-> String {
    return "\(givenName) \(middleName) \(familyName) !"
}

let myFullName = fullName("Sam","","Kim")

print(myFullName)


//매개변수 오버로딩
func combine (_ giveName: String, _ familyName: String) -> String {
    return "\(giveName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5,10)

print(combinedString)
print(combinedInt)
