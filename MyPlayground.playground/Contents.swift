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
//
//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil //컴파일 오류 발생
//
//var numverOfFingersHeldUpByFinn: Int?
//numverOfFingersHeldUpByFinn = nil
//numverOfFingersHeldUpByFinn = 3
//
//print(numverOfFingersHeldUpByFinn ?? "Unknown")
//
//let lastNumberOfFingersGeldUpFinn: Int = numverOfFingersHeldUpByFinn! // 위험할 수 있음
//
//func fullName(giveName: String, middleName: String, familyName: String) -> String {
//    return "\(giveName) \(middleName) \(familyName) !"
//}
//
//let myfullName = fullName(giveName: "keith", middleName: "David", familyName: "Moon")
//print(myfullName)
//
//func combine(givenName: String, familyName: String) -> String {
//    return "\(givenName) \(familyName)"
//}
//
//func combine(_ integer1: Int, _ integer2: Int) -> Int {
//    return integer1 + integer2
//}
//
//
//
//let combinedString = combine(givenName: "Finnley",familyName: "Moon")
//let combineInt = combine(5, 10)
//
//print(combinedString)
//print(combineInt)
//
//
//class Person{
//    let givenName: String
//    let middleName: String
//    let familyName: String
//    var countryOfResidence: String = "KR"
//    
//    init(givenName: String, middleName: String, familyName: String) {
//        self.givenName = givenName
//        self.middleName = middleName
//        self.familyName  = familyName
//    }
//    func fullName() -> String {
//        return "\(givenName) \(middleName) \(familyName)"
//    }
//    var displayString: String {
//        return "\(self.fullName()) - Location: \(countryOfResidence)"
//    }
//    
//}
//
//var person1 = Person(givenName: "Hyungjun", middleName: "Sven", familyName: "Kim")
//
//final class Family: Person {
//    
//    let relationship: String
//    
//    init(givenName: String, middleName: String, familyName: String = "Moon", relationship: String) {
//        self.relationship = relationship
//        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
//    }
//    
//}
//
//class MovieReview {
//    let movieTitle: String
//    var starRating: Int
//    init(movieTitle: String, starRating: Int) {
//        self.movieTitle = movieTitle
//        self.starRating = starRating
//    }
//}
//
//let shawshankReviewOnYourwebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 5)
//
//let referenceToReviewOnTwitter = shawshankReviewOnYourwebsite
//let referenceToReviewOnFacebook = shawshankReviewOnYourwebsite
//
//
//enum Title: String {
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "mister"
//    case miss = "Miss"
//    case dr = "Dr"
//    case prof = "prof"
//    case other
// }
//
//let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
//let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
//
//print(fibonacciArray.count)
//print(fibonacciSet.count)
//
//var animals: Set<String> = ["cat", "dog", "mouse", "elephant"]
//animals.insert("rabbit")
//print(animals.contains("dog"))
//animals.remove("dog")
//print(animals.contains("dog"))
//
//let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
//let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
//let squareNumbers: Set<Int> = [1, 4, 9]
//let triangularNumbers: Set<Int> = [1, 3, 6, 10]
//
//let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers) // 2, 4, 6, 8, 10, 1, 3, unordered
//print(evenOrTriangularNumbers.count) // 7
//
//let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers) // 1, 9, unordered
//print(oddAndSquareNumbers.count) // 2
//
//let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers) // 4, 9, 3, 6, 10, unordered
//print(squareOrTriangularNotBoth.count) // 5
//
//let squareNotOdd = squareNumbers.subtracting(oddNumbers) // 4
//print(squareNotOdd.count) // 1
//
//
//let repeatingArray = Array(repeating: "형준", count: 5)
//print(repeatingArray)
//
//let numbers = [10, 20, 30, 40, 50]
//
//let newIndex = numbers.index(numbers.startIndex, offsetBy: 8, limitedBy: numbers.endIndex)
//

for row in 0..<10 {
    print("row num: \(row)")}
 
