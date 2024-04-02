import UIKit

//var greeting = "Hello, playground"
//
//let phrase: String = "The quick brown fox jumps over the lazy dog"
//
//greeting = "Modification"
//
//let numberOfFoxes: Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
//
//var anotherPhase = phrase
//
//anotherPhase = "Modification"
//
//var phraseInfo = "The phrase" + " has: "
//print(phraseInfo)
//
//phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals)  animals"
//print(phraseInfo)
//
//print("Number of characters in phrase: \(phrase.count)")
//
//
//let multilineExplanation = """
// Why is the following phrase often used?
// "The quick brown fox jumps over the lazy dog"
// this Phrase contains every letter in the alphabet.
// """
//
//let phrasesAreEqual = phrase == anotherPhase
//print(phrasesAreEqual)
//
//let phraseHas43Characters = phrase.count == 40 + 3
//print(phraseHas43Characters)
//
//var dayOfTheWeek: String = "Monday"
//dayOfTheWeek = "Tuesday"
//dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil
//
//
//var numberOfFingerHeldUpByFinn: Int?
//numberOfFingerHeldUpByFinn = nil
//numberOfFingerHeldUpByFinn = 3

//print(numberOfFingerHeldUpByFinn ?? "Unknown")

//let lastNumberOfFingerHeldUpByFinn: Int = numberOfFingerHeldUpByFinn!
//print(lastNumberOfFingerHeldUpByFinn)

//
//func fullName(giveName: String, middleName: String = " ", familyName: String) -> String {
//    return " \(giveName) \(middleName) \(familyName)"
//}
//
//let myFullName = fullName(giveName: "Keith", familyName: "Moon")
//
//print(myFullName)
//
//
//func combine(_ giveName: String, _ familyName: String) -> String {
//    return "\(giveName) \(familyName)"
//}
//
//func combine(_ integer1: Int, _ integer2: Int) -> Int {
//    return integer1 + integer2
//}
//
//let combinedString = combine("Finnley", "Moon")
//let combinedInt = combine(5, 10)
//
//print(combinedString)
//print(combinedInt)


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


//protocol Saveable {
//    var saveNeeded: Bool {get set}
//    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void
//    )
//}
//
//class Person: Saveable {
//    var saveHandler: ((Bool) -> Void)?
//    var saveNeeded: Bool = true
//    
//    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
//        saveHandler = handler
//        saveComplete(success: true)
//    }
//    func saveComplete(success: Bool) {
//        saveHandler?(success)
//    }
//}
//
//func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
//    let fraction = rating / total
//    let ratingOutOf5 = fraction * 5
//    let roundedRating = round(ratingOutOf5)
//    let numberOfStars = Int(roundedRating)
//    let ratingString = "\(numberOfStars) Star Movie"
//    return (numberOfStars,ratingString)
//}
//
//var moviesToWatch: Array<String> = Array()
//
//moviesToWatch.append("The Shawshank Redemption")
//moviesToWatch.append("Ghostbusters")
//moviesToWatch.append("Terminator 2")
//
//print(moviesToWatch[1])
//print(moviesToWatch.count)
//
//moviesToWatch.insert("The Matrix", at: 2)
//
//print(moviesToWatch.first ?? "Empty")
//print(moviesToWatch.last ?? "Empty")
//
//let secondMovieToWatch = moviesToWatch[1]
//moviesToWatch[1] = "Ghostbusters (1984)"
//print(moviesToWatch.count)
//print(moviesToWatch)
//
//let spyMovieSuggestions: [String] = ["The Bourne Identity","Casino Royale", "Misson Imposible"]
//moviesToWatch = moviesToWatch + spyMovieSuggestions
//print(moviesToWatch.count)
//print(moviesToWatch)
//
//var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
//starWarsTrilogy[0] += "A New Hope"
//starWarsTrilogy[1] += "Empire Strikes Back"
//starWarsTrilogy[2] += "Return of the Jedi"
//print(starWarsTrilogy)
//
//moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
//print(moviesToWatch.count)
//
//moviesToWatch.remove(at: 6)
//print(moviesToWatch.count)
//
//
//let fibonacciArray: Array<Int> = [1,1,2,3,4,8,13,21,34]
//let fibonaccisSet: Set<Int> = [1,1,2,3,4,8,13,21,34]
//
//print(fibonacciArray.count)
//print(fibonaccisSet.count)
//
//var animals : Set<String> = ["cat","dog","mouse","elephant"]
//
//animals.insert("rabbit")
//print(animals.contains("dog"))
//animals.remove("dog")
//print(animals.contains("dog"))
//
//
//let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
//let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
//let squareNumbers: Set<Int> = [1, 4, 9]
//let triangularNumbers: Set<Int> = [1, 3, 6, 10]

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

//struct Person1: Hashable {
//    var name: String
//    var age: Int
//    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//        hasher.combine(age)
//    }
//}
//
//
//let person1 = Person1(name: "Alice", age: 30)
//let person2 = Person1(name: "Bob", age: 25)
//
//var peopleSet: Set<Person1> = [person1, person2]
//
//let person3 = Person1(name: "Alice", age: 30)
//
//peopleSet.insert(person3)
//print(peopleSet.count)
//print(peopleSet)
//
//struct Person2: Hashable {
//    let name: String
//    let age: Int
//    
//    static func == (lhs: Person2, rhs: Person2) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//        hasher.combine(age)
//    }
//}

//
//struct PersonName {
//    let givenName: String
//    let familyName: String
//}
//
//enum CommunicationMethod {
//    case phone
//    case email
//    case textMessage
//    case fax
//    case telepathy
//    case subSpaceRelay
//    case tachyons
//}
//enum Role: String {
//    case captain = "Captain"
//    case firstOfficer = "First Officer"
//    case secondOfficer = "Second Officer"
//    case chiefEngineer = "Chief Engineer"
//    case councillor = "Councillor"
//    case securityOfficer = "Security Officer"
//    case chiefMedicalOfficer = "Chief Medical Officer"
//}
//
//
//class Person {
//    let name: PersonName
//    let preferredCommunicationMethod: CommunicationMethod
//    
//    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
//        let name = PersonName(givenName: givenName, familyName: familyName)
//        self.init(name: name, commsMethod: commsMethod)
//    }
//    
//    init(name: PersonName, commsMethod: CommunicationMethod) {
//        self.name = name
//        preferredCommunicationMethod = commsMethod
//    }
//    var displayName: String {
//        return "\(name.givenName) \(name.familyName)"
//    }
//}
//
//var crew = Dictionary<Role, Person>()
//crew[.captain] = Person(givenName: "Jean-Luc",
//                         familyName: "Picard",
//                         commsMethod: .phone)
//
//crew[.firstOfficer] = Person(givenName: "William",
//                               familyName: "Riker",
//                               commsMethod: .email)
//
//crew[.chiefEngineer] = Person(givenName: "Geordi",
//                                familyName: "LaForge",
//                                commsMethod: .textMessage)
//
//crew[.secondOfficer] = Person(givenName: "Data",
//                                familyName: "Soong",
//                                commsMethod: .fax)
//
//crew[.councillor] = Person(givenName: "Deanna",
//                            familyName: "Troi",
//                            commsMethod: .telepathy)
//
//crew[.securityOfficer] = Person(givenName: "Tasha",
//                                  familyName: "Yar",
//                                  commsMethod: .subSpaceRelay)
//
//crew[.chiefMedicalOfficer] = Person(givenName: "Beverly",
//                                       familyName: "Crusher",
//                                       commsMethod: .tachyons)
//
//let roles = Array(crew.keys)
//print(roles)
//
//let firstRole = roles.first!
//let cmo = crew[firstRole]
//print("\(firstRole): \(cmo?.displayName ?? "N/A")")

//
//enum GridPosition: String {
//    case player1 = "o"
//    case player2 = "x"
//    case empty = " "
//}
//
//struct TicTacToe {
//    var gridStorage: [[GridPosition]] = []
//    
//    subscript(atRow row: Int, atColumn column: Int) -> GridPosition {
//        get {
//            return gridStorage[row][column]
//        }
//        set(newValue) {
//            gridStorage[row][column] = newValue
//        }
//    }
//    init() {
//        gridStorage.append(Array(repeating: .empty, count: 3))
//        gridStorage.append(Array(repeating: .empty, count: 3))
//        gridStorage.append(Array(repeating: .empty, count: 3))
//    }
//    func gameStateString() -> String {
//        var stateString = "-------------\n"
//        stateString += printableString(forRow: gridStorage[0])
//        stateString += "-------------\n"
//        stateString += printableString(forRow: gridStorage[1])
//        stateString += "-------------\n"
//        stateString += printableString(forRow: gridStorage[2])
//        stateString += "-------------\n"
//        
//        return stateString
//    }
//    func printableString(forRow row: [GridPosition]) -> String {
//        var rowString = "| \(row[0].rawValue) "
//        rowString += "| \(row[1].rawValue) "
//        rowString += "| \(row[2].rawValue) |\n"
//        
//        return rowString
//        
//    }
//}
//
//var game = TicTacToe()
//print(game.gameStateString())
//
//print(game.gridStorage[0][0])
//print(game[atRow: 0,atColumn:0])
//
//game[atRow:1, atColumn: 1] = .player1
//print(game.gameStateString())
//
//game[atRow:0, atColumn: 2] = .player2
//print(game.gameStateString())
//
//
//struct Pug {
//    let name: String
//}
//let pugs = [Pug]()
//
//typealias Grumble = [Pug]
//
//var grumble = Grumble()
//
//let marty = Pug(name: "Marty McPug")
//let wolfie = Pug(name: "Wolfgang Pug")
//let buddy = Pug(name: "Buddy")
//
//grumble.append(marty)
//grumble.append(wolfie)
//grumble.append(buddy)
//
//
//enum Channel {
//    case BBC1
//    case BBC2
//    case BBCNews
//}
//
//class ProgrammerFetcher {
//    
//    typealias FetchResultHandler = (String?, Error?) -> Void
//    
//    func fetchCurrentProgrammeName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
//        let exampleProgrammName = "Sherlock"
//        resultHandler(exampleProgrammName,nil)
//    }
//    
//    func fetchNextProgrammeName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
//        let exampleProgrammName = "Luther"
//        resultHandler(exampleProgrammName,nil)
//    }
//    
//}
//
//let fetcher = ProgrammerFetcher()
//fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { programmeName, error in
//    print(programmeName ?? "N/A")
//})


//class UserManager {
//    var currentUserName: String = "Emmanuel Goldstein" {
//        willSet (newUserName) {
//            print("Goodbye to \(currentUserName)")
//            print("I hear \(newUserName) is on their way!")
//        }
//        didSet (oldUserName) {
//            print("Welcome to \(currentUserName)")
//            print("I miss \(oldUserName) already!")
//        }
//    }
//}
//
//let manager = UserManager()
//print(manager.currentUserName)
//manager.currentUserName = "Dade Murphy"


class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        didSet {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manager = UserManager()
print(manager.currentUserName)
manager.currentUserName = "Dade Murphy"


extension String {
    func firstWord() -> String {
        let sapceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: sapceIndex)
        return String(word)
    }
}

let llap = "Live long, and prosper"
let firstWord = llap.firstWord()
print(firstWord)
