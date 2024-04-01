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


//class Person {
//    let givenName: String
//    let middleName: String
//    let familyName: String
//    var countryOfResidence: String = "KR"
//    
//    init(givenName: String, middleName: String, familyName: String) {
//        self.givenName = givenName
//        self.middleName = middleName
//        self.familyName = familyName
//    }
//    
//    func fullName() -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//    }
//    
//    var displayString: String {
//        return "\(self.fullName()) -Location: \(self.countryOfResidence)"
//    }
//}
//var person = Person(givenName: "Jeong", middleName: "Woo", familyName: "Kim")
//
//final class Family: Person {
//    let  relationship: String
//    
//    init(givenName: String,
//         middleName: String,
//         familyName: String,
//         relationship: String) {
//        self.relationship = relationship
//        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
//    }
//}

//var family = Family(givenName: "Jeong", middleName: "Woo", familyName: "Kim", relationship: "Man")

//class MovieReview {
//    let movieTitle: String
//    var starRating: Int
//        
//    init(movieTitle: String, startRating: Int) {
//        self.movieTitle = movieTitle
//        self.starRating = startRating
//    }
//}
//
//let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", startRating: 3)
//
//let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
//let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite
//
//print(referenceToReviewOnTwitter.starRating)
//print(referenceToReviewOnFacebook.starRating)
//shawshankReviewOnYourWebsite.starRating = 5
//
//print(referenceToReviewOnTwitter.starRating)
//print(referenceToReviewOnFacebook.starRating)
//
//
//struct PersonName {
//    let givenName: String
//    let middleName: String
//    var familyName: String
//     
//    func fullName() -> String {
//        return "\(givenName) \(middleName) \(familyName)"
//    }
//     
//    mutating func change(familyName: String) {
//        self.familyName = familyName
//    }
//}
//
//class Person {
//     
//    let birthName: PersonName
//    var currentName: PersonName
//    var countryOfResidence: String
//     
//    init(name: PersonName, countryOfResidence: String = "UK") {
//        birthName = name
//        currentName = name
//        self.countryOfResidence = countryOfResidence
//    }
//     
//    var displayString: String {
//        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
//    }
//}
//
//
//
//
//
//
//
//
//enum ComparisonResult: Int {
//    case orderedAscending
//    case orderedSame
//    case orderedDescending
//}
//
//
//enum Title: String {
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "Mister"
//    case miss = "Miss"
//    case dr = "Dr"
//    case prof = "Prof"
//    case other
//    
//    var isProfessional: Bool {
//        return self == Title.dr || self == Title.prof
//    }
//    
//}
//
//let title1 = Title.mr
//print(title1.isProfessional)
//
//
//
//let printAuthorDetails: () -> () = {
//    let name = PersonName(givenName: "Jeong", middleName: "Woo", familyName: "Kim")
//    let author = Person(name: name)
//    print(author.displayString)
//}
//
//printAuthorDetails()
//
//let createAuthor: () -> Person = {
//    let name = PersonName(givenName: "Keith",
//                          middleName: "David",
//                          familyName: "Moon")
//    let author = Person(name: name)
//    return author
//}
//let author = createAuthor()
//print(author.displayString)
//
//let createPerson: (String, String, String) -> Person = { given,
//  middle, family in
//    let name = PersonName(givenName: given,
//                          middleName: middle,
//                          familyName: family)
//    let person = Person(name: name)
//    return person
//}
//let felix = createPerson("Felix", "Robert", "Moon")
//print(felix.displayString)


protocol Saveable {
    var saveNeeded: Bool {get set}
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void
    )
}

class Person: Saveable {
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        saveComplete(success: true)
    }
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}

func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars,ratingString)
}

var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[1])
print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at: 2)

print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

let spyMovieSuggestions: [String] = ["The Bourne Identity","Casino Royale", "Misson Imposible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)
