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


func fullName(_ givenName: String, _ middleName: String, _ familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

//let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")

//print(myFullName)

func combine(_ integer1: Int, _ integer2: Int)-> Int
{
    return integer1 + integer2
}

//let combinedString = combine("Finnley","Moon");
let combinedInt = combine(5, 10)


//------------------------------------------------------
struct PersonName {
    let givenName: String
    let middleName: String
    var familyName: String
     
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
     
    mutating func change(familyName: String) {
        self.familyName = familyName
    }
}

//class Person {
    //let birthName: PersonName
    //var currentName: PersonName
    //var countryOfResidence: String
     
    //init(name: PersonName, countryOfResidence: String = "UK") {
        //birthName = name
        //currentName = name
        //self.countryOfResidence = countryOfResidence
    //}
     
    //var displayString: String {
        //return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    //}
//}

// ------------------ 클로저 예제 코드 -------------------
//let printAuthorDetails: () -> Void = {
    //let name = PersonName(givenName: "Jungman", middleName: "Dan", familyName: "Bae")
    //let author = Person(name: name)
    //print(author.displayString)
//}

//printAuthorDetails()


//let createAuthor: () -> Person = {
    //let name = PersonName(givenName: "Keith",
                          //middleName: "David",
                          //familyName: "Moon")
    //let author = Person(name: name)
    //return author
//}
//let author = createAuthor()
//print(author.displayString)

//let creatPerson: (String, String, String)-> Person ={given,middle,family in
    //let name = PersonName(givenName: given,
                          //middleName: middle,
                          //familyName: family)
    //let person
//}
protocol Saveable {
      var saveNeeded: Bool { get set }
      func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    //....
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
     
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
         saveHandler = handler
         // Send person information to remove database
         // Once remote save is complete, it calls
           // saveComplete(Bool)
         // We'll fake it for the moment, and assume the save is
           // complete.
         saveComplete(success: true)
    }
     
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}
import Foundation

func normalizedStartRating(forRating rating: Float, ofPoseibleTotal total: Float) -> (Int, String)
{
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStarts = Int(roundedRating)
    let ratingStaring = "\(numberOfStarts) start movie"
    return(numberOfStarts,ratingStaring)
}

//배열 추가하기
var moviesToWatch: Array<String> = Array()
moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[1])
print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at: 2)

print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

//배열 수정
let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

//배열 더하기
let spyMovieSuggestions : [String] = ["The Bourne Identity", "Casino Royale","Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)

//문자열 뒤에 추가적으로 내용을 더하기
var starwarsTrilogy = Array<String>(repeating: "Star Wars: ", count : 3)
starwarsTrilogy[0] += "A New Hope"
starwarsTrilogy[1] += "Empire Strikes Back"
starwarsTrilogy[2] += "Return of the Jedi"
print(starwarsTrilogy)

moviesToWatch.replaceSubrange(2...4, with: starwarsTrilogy)
print(moviesToWatch.count)

//배열 지우기
moviesToWatch.remove(at: 6)
print(moviesToWatch.count)





