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

//print(combinedString)
//print(combinedInt)

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    
    //초기화 매서드
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    // class 내의 함수이므로 파라미터를 지정안해도 값을 사용할 수 있다.
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
}

var person = Person(givenName: "HEO", middleName: "WON", familyName: "yoel")

//print(person.fullName())

// 클래스 상속하기
final class Family: Person{
    let relationship: String
    
    init(givenName: String,
         middleName: String,
         familyName: String,
         relationship: String) {
        self.relationship = "Son"
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
        // super : 나를 상속한 부모 클래스를 호출, 이미 정의되어있는 변수를 불러올 수 있다.
        
        func displayrelation() -> String {
            return "relation: \(self.relationship)"
        //person의 fullname 함수를 쓸수 있나?
        }
    }
}
    
var family = Family(givenName: "HEO", middleName: "won", familyName: "yeol", relationship: "Son")
//print(family.displayrelation()) 왜 안될까..

class MovieReview {
    let movieTitle: String
    var statRating: Int
    init(movieTitle: String, statRating: Int) {
        self.movieTitle = movieTitle
        self.statRating = statRating
    }
}

let shawshankReview = MovieReview(movieTitle: "Shawshank", statRating: 3)

print(shawshankReview.statRating)

shawshankReview.statRating = 5

print(shawshankReview.statRating)
    

//enums (열겨형)


