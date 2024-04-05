import Foundation

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


// ----- func ----- //

func fullName(givenName: String, middleName : String = " ", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName) !"
}
var myFullName = fullName(givenName: "A", middleName: "B", familyName: "C")
print(myFullName)

myFullName = fullName(givenName: "A", familyName: "C")
print(myFullName)


// ------- combine --------//


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

// --- Class --- //

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
        // self: 클래스에 선언된 멤버변수 사용
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(countryOfResidence)"
    }
}

var person = Person(givenName: "A", middleName: "B", familyName: "C")
print(person.displayString)

// --------- //

// final class : 부모가 되지 못하게 막음
final class Family:Person {
    let relationship:String
    
    init(givenName: String, middleName: String, familyName: String,
                  relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "A", middleName: "B", familyName: "C", relationship: "family")

// ----refernce---- //

class MovieReview {
    let movieTitle: String
    var startRating: Int
    init(movieTitle: String, startRating: Int) {
        self.movieTitle = movieTitle
        self.startRating = startRating
    }
}

let shashankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank", startRating: 3)

let referceToReviewOnTwiter = shashankReviewOnYourWebsite
let referceToReviewOnFacebook = shashankReviewOnYourWebsite

shashankReviewOnYourWebsite.startRating = 4
print(referceToReviewOnTwiter.startRating)
print(referceToReviewOnFacebook.startRating)


// -- enum -- //
enum ComparisionResult: Int {
    case orderedAsceding // 0
    case orderedSame // 1
    case orderedDescending // 2
    // ... 3, 4, 5
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfessional: Bool {
        return self == Title.dr || self == Title.prof
    }
}

let title1 = Title.mr
print(title1.isProfessional)


// -- clouser -- //
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

class Person2 {
     
    let birthName: PersonName
    var currentName: PersonName
    var countryOfResidence: String
     
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
     
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

//1
let printAuthorDetails: () -> () = { // 스트럭트와 클래스의 초기화 및, 출력
    let name = PersonName(givenName: "A", middleName: "B", familyName: "C")
    let author = Person2(name: name)
    print(author.displayString)
}

printAuthorDetails()


//2
let createAuthor: () -> Person2 = {
    let name = PersonName(givenName: "A", middleName: "B", familyName: "C")
    let author = Person2(name: name)
    return author
}
print(createAuthor())

//3
let printPersonsDetails: (String, String, String) -> Void = {
    given, middle, family in
    let name = PersonName(givenName: given , middleName: middle, familyName: family)
    let author = Person2(name: name)
    print(author.displayString)
}
printPersonsDetails("a_","b_","c_")

// 4
let createPerson: (String, String, String) -> Person2 = {
    given, middle, family in
    let name = PersonName(
        givenName: given,middleName: middle,familyName: family)
    let person2 = Person2(name: name)
    return person2
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)



// --프로토콜-- //
protocol Saveable {
    var saveNeeded : Bool {get set}
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person3: Saveable {
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


// -- 튜플 -- //
func normalizedStartRating
(forRating rating: Float, ofPossibleTotal total: Float) 
-> (Int, String) {
    let fraction = rating/total
    let ratingOutOf5 = fraction * 5
    let rounedRating = round(ratingOutOf5)
    let numberOfStars = Int(rounedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return(numberOfStars, ratingString) // Touple
}
print(normalizedStartRating(forRating: 4.0, ofPossibleTotal: 3.0))



// -- 배열 -- //
var moviesToWatch: Array<String> = Array()
moviesToWatch.append("The shsnakd Redapti")
moviesToWatch.append("HoshotBurst")
moviesToWatch.append("Terminator 2")

print(moviesToWatch)
print(moviesToWatch.count)
moviesToWatch.insert("The Matrix", at: 2)
print(moviesToWatch)
print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

let spyMovieSuggestions: [String] = ["aaa", "bbb", "ccc"]
moviesToWatch = moviesToWatch + spyMovieSuggestions // 하나의 배열로 결합
print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star wars :", count : 3)
print(starWarsTrilogy) // ["Star wars :", "Star wars :", "Star wars :"]

starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

// 3~5번째 배열 갈아끼우기
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch)

moviesToWatch.remove(at:6)
print(moviesToWatch)







