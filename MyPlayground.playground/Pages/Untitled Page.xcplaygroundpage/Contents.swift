import UIKit
import Foundation

/*
 
 /// 문자열 상수 및 변수 선언
 var greeting = "Hello, playground"
 let phrase: String = "The quich brown fox jums over the lazy dog"
 
 greeting = "Hi"
 //phrase = "Hi" //Cannot assign to value: 'phrase' is a 'let' constant
 
 let numberOfFoxes: Int = 1
 let numberOfAnimals: Int = 2
 
 /// Float 계산
 let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
 
 /// 가변 변수
 var anotherPhrase = phrase
 anotherPhrase = "The quick brown jumps over the lazy "
 print(phrase) // "The quick brown fox jumps over the lazy dog"
 print(anotherPhrase) // "The quick brown jumps over the lazy "
 
 /// 문자열 연결 및 삽입
 var phraseInfo = "The phrase" + "has: "
 print(phraseInfo)
 
 phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
 print(phraseInfo)
 
 /// 문자 수 세기
 print("Number of characters: \(phraseInfo.count)")
 
 /// 다중 줄 문자열 리터럴
 let multilineExplanation = """
 Why is the following phrase often used?
 "The quick brown fox jumps over the lazy dog"
 This phrase contains every letter in the alphabet.
 """
 
 /// 부울 비교
 let phrasesAreEqual = phrase == anotherPhrase
 print(phrasesAreEqual) // false
 let phraseHas43Characters = phrase.count == 40 + 3
 print(phraseHas43Characters) // true
 
 /// Swift 에ㅅ 옵셔널과 강제 언래핑 사용하기
 var dayOfTheWeek: String = "Monday"
 dayOfTheWeek = "Tuesday"
 dayOfTheWeek = "Wednesday"
 // dayOfTheWeek = nil // 컴파일 오류 발생
 
 var numberOfFingersHeldUpByFinn: Int?
 numberOfFingersHeldUpByFinn = nil
 numberOfFingersHeldUpByFinn = 3
 
 print(numberOfFingersHeldUpByFinn ?? "Unknown")
 
 let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // 위험할 수 있음
 print(lastNumberOfFingersHeldUpByFinn)
 
 
 /// 함수
 func fullName(givenName: String, middleName: String = "Unknown", familyName: String)
 -> String {
 return "\(givenName) \(middleName) \(familyName)" /// 함수 변경
 }
 
 let myFullName = fullName(givenName: "kim", familyName: "song")
 print(myFullName)
 
 /// 매개변수 오버로딩
 /// Swift는 매개변수 오버로딩을 지원하여, 같은 이름의 함수가 다른 매개변수를 가질 수 있습니다.
 func combine(_ givenName: String, _ familyName: String) -> String {
 return "\(givenName) \(familyName)"
 }
 func combine(_ integer1: Int, _ integer2: Int) -> Int {
 return integer1 + integer2
 }
 
 let combinedString = combine("Finnley", "Moon")
 let combinedInt = combine(5, 10)
 print(combinedString) // Finnley Moon
 print(combinedInt) // 15
 
 
 /// 객체클래스에서 기능 캡슐화하기
 class Person {
 let givenName: String
 let middleName: String
 let familyName: String
 var countryOfResidence: String = "KR"
 
 init(givenName: String, middleName: String, familyName: String) {
 self.givenName = givenName
 self.middleName = middleName
 self.familyName = familyName
 }
 
 // 함수
 func fullName() -> String {
 return "\(givenName) \(middleName) \(familyName)"
 }
 
 // 프로퍼티 (변수)
 var dispalyString: String {
 return "\(self.fullName()) - Location: \(self.countryOfResidence)"
 }
 
 }
 
 var person = Person(givenName: "Song", middleName: "K", familyName: "m")
 
 
 
 final class Family: Person {
 let relationship: String
 
 init(givenName: String, middleName: String, familyName: String,relationship: String) {
 self.relationship = relationship
 super.init(givenName: givenName, middleName: middleName, familyName: familyName) // 나의 부모클래스 범위.. 어., 호출
 }
 }
 
 var family = Family(givenName: "k", middleName: "k", familyName: "k", relationship: "k")
 print(family)
 
 class MovieReview {
 let movieTitle: String
 var starRating: Int
 init(moveTitle: String, starRating: Int) {
 self.movieTitle = moveTitle
 self.starRating = starRating
 }
 }
 
 let shawshankReviewOnYourWebsite = MovieReview(moveTitle: "HarryPotter", starRating: 4)
 
 //소설 미디어에 게시
 let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
 let referenceRoreviewOnFacebook = shawshankReviewOnYourWebsite
 
 print(referenceToReviewOnTwitter.starRating) //4
 print(referenceToReviewOnTwitter.starRating) //4
 
 // 수정하면 전체가 수정 됨
 shawshankReviewOnYourWebsite.starRating = 5
 
 print(referenceToReviewOnTwitter.starRating) //5
 print(referenceToReviewOnTwitter.starRating) //5
 
 /// 열거형
 enum ComparisonResult: Int {
 case orderedAscending //0
 case orderedSame //1
 case orderedDescending //2
 }
 
 enum Title: String {
 case mr = "Mr"
 case mrs = "Mrs"
 case mister = "Mister"
 case miss = "Miss"
 case dr = "Dr"
 case prof = "Prof"
 case other
 
 var isProFessional: Bool {
 return self == Title.dr || self == Title.prof
 }
 }
 
 let title = Title.mr
 
 print(title.isProFessional) //false
 
 
 struct PersonName { //value 타입
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
 
 class Person { //reference 타입
 
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
 
 
 //클로저 Closures
 let printAuthorDetails: () -> Void = { //반환할 피룡 없을 때 Void
 let name = PersonName(givenName: "Song", middleName: "k", familyName: "im")
 let author = Person(name: name)
 print(author.displayString)
 }
 
 printAuthorDetails()
 
 let createAuthor: () -> Person = {
 let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
 let author = Person(name: name)
 return author
 }
 let author = createAuthor()
 print(author.displayString)
 
 let createPerson: (String, String, String) -> Person = { given, middle, family in
 let name = PersonName(givenName: given, middleName: middle, familyName: family)
 let person = Person(name: name)
 return person
 }
 let felix = createPerson("Felix", "Robert", "Moon")
 print(felix.displayString)
 
 
 ///프로토콜
 ///이름이 대부분 ...able 이랍니다j
 ///스스로 존재 할 수 없음
 protocol Saveable {
 var saveNeeded: Bool {get set}
 func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
 }
 
 class Person: Saveable {
 //....
 var saveHandler: ((Bool) -> Void)?
 var saveNeeded: Bool = true
 
 func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) { //밖에서도 사용하고 싶어서 escaping을 사용..?
 ///클로저를 인수로 받으면 그 클로저는 함수 안에서 실행이 종료되는데
 ///이스케이핑 키워드를 쓰면 함수가 다 끝나고 함수밖에서 실행된다고 보면댐..
 saveHandler = handler
 saveComplete(success: true)
 }
 
 func saveComplete(success: Bool) {
 saveHandler?(success)
 }
 }
 
 //별점 정규화 함수
 func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
 let fraction = rating / total
 let ratingOutOf5 = fraction * 5
 let roundedRating = round(ratingOutOf5)
 let numberOfStars = Int(roundedRating)
 let ratingString = "\(numberOfStars) Star Movie"
 return (numberOfStars, ratingString)
 }
 
 
 /// 배열
 var moviesToWatch: Array<String> = Array()
 
 moviesToWatch.append("The Shawshank Redemption")
 moviesToWatch.append("Ghostbusters")
 moviesToWatch.append("Terminator 2")
 
 print(moviesToWatch[1])
 print(moviesToWatch.count)
 
 moviesToWatch.insert("The Matrix", at: 2)
 print(moviesToWatch)
 
 print(moviesToWatch.first ?? "Empty")
 print(moviesToWatch.last ?? "Empty")
 
 let secondMovieToWatch = moviesToWatch[1]
 moviesToWatch[1] = "Ghostbusters"
 print(secondMovieToWatch.count)
 print(moviesToWatch)
 
 let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"] //배열합치기
 moviesToWatch = moviesToWatch + spyMovieSuggestions
 print(moviesToWatch)
 
 var starWarsTrilogy = Array<String>(repeating: "Star Wars", count: 3) //미리 갯수 정해주기
 starWarsTrilogy[0] += "A New Hope"
 starWarsTrilogy[1] += "Empire Striles Back"
 starWarsTrilogy[2] += "Return of the Jedi"
 print(starWarsTrilogy)
 
 moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy) // 바꿔치기
 print(moviesToWatch)
 
 moviesToWatch.remove(at: 6) //삭제
 print(moviesToWatch.count)
 
 /// 데이터를 집합 Set에 포함하기
 import Foundation
 
 let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
 let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
 print(fibonacciArray.count) // 9
 print(fibonacciSet.count) // 8
 
 var animals: Set<String> = ["cat", "dog", "mouse", "elephant"]
 
 animals.insert("rabbit")
 print(animals.contains("dog")) // true
 animals.remove("dog")
 print(animals.contains("dog")) // false
 
 let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
 let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
 let squareNumbers: Set<Int> = [1, 4, 9]
 let triangularNumbers: Set<Int> = [1, 3, 6, 10]
 
 let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers) // 2, 4, 6, 8, 10, 1, 3, unordered
 print(evenOrTriangularNumbers.count) // 7
 
 let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers) // 1, 9, unordered
 print(oddAndSquareNumbers.count) // 2
 
 let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers) // 4, 9, 3, 6, 10, unordered
 print(squareOrTriangularNotBoth.count) // 5
 
 let squareNotOdd = squareNumbers.subtracting(oddNumbers) // 4
 print(squareNotOdd.count) // 1
 
 /// Hashable
 struct Person: Hashable {
 var name: String
 var age: Int
 
 func hash(into hasher: inout Hasher) {
 hasher.combine(name)
 hasher.combine(age) //이름만 넣고 age를 주석처리하면 중복제거를 이름만 검사함(?)
 }
 
 static func == (lhs: Person, rhs: Person) -> Bool {
 return lhs.name == rhs.name && lhs.age == rhs.age
 }
 }
 
 let person1 = Person(name: "Alice", age: 30)
 let person2 = Person(name: "Bob", age: 25)
 
 var peopleSet: Set<Person> = [person1, person2]
 let person3 = Person(name: "Alice", age: 30)
 
 peopleSet.insert(person3)
 
 print(peopleSet.count)
 
 //func 구조체 에서만 static func 여기저기에서 (전역함수)
 
 
 ///Dictionary
 ///사전 key-value 쌍 저장하기
 struct PersonName {
 let givenName: String
 let familyName: String
 }
 
 enum CommunicationMethod {
 case phone
 case email
 case textMessage
 case fax
 case telepathy
 case subSpaceRelay
 case tachyons
 }
 
 class Person {
 let name: PersonName
 let preferredCommunicationMethod: CommunicationMethod
 
 convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
 let name = PersonName(givenName: givenName, familyName: familyName)
 self.init(name: name, commsMethod: commsMethod)
 }
 
 init(name: PersonName, commsMethod: CommunicationMethod) {
 self.name = name
 preferredCommunicationMethod = commsMethod
 }
 
 var displayName: String {
 return "\(name.givenName) \(name.familyName)"
 }
 }
 
 var crew = Dictionary<String, Person>()
 
 crew["Captain"] = Person(givenName: "Jean-Luc",
 familyName: "Picard",
 commsMethod: .phone)
 
 crew["First Officer"] = Person(givenName: "William",
 familyName: "Riker",
 commsMethod: .email)
 
 crew["Chief Engineer"] = Person(givenName: "Geordi",
 familyName: "LaForge",
 commsMethod: .textMessage)
 
 crew["Second Officer"] = Person(givenName: "Data",
 familyName: "Soong",
 commsMethod: .fax)
 
 crew["Councillor"] = Person(givenName: "Deanna",
 familyName: "Troi",
 commsMethod: .telepathy)
 
 crew["Security Officer"] = Person(givenName: "Tasha",
 familyName: "Yar",
 commsMethod: .subSpaceRelay)
 
 crew["Chief Medical Officer"] = Person(givenName: "Beverly",
 familyName: "Crusher",
 commsMethod: .tachyons)
 
 let roles = Array(crew.keys)
 print(roles)
 
 let firstRole = roles.first!
 let cmo = crew[firstRole]
 print("\(firstRole): \(cmo?.displayName ?? "N/A")")
 
 
 struct PersonName {
 let givenName: String
 let familyName: String
 }
 
 enum CommunicationMethod {
 case phone
 case email
 case textMessage
 case fax
 case telepathy
 case subSpaceRelay
 case tachyons
 }
 
 class Person {
 let name: PersonName
 let preferredCommunicationMethod: CommunicationMethod
 
 convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
 let name = PersonName(givenName: givenName, familyName: familyName)
 self.init(name: name, commsMethod: commsMethod)
 }
 
 init(name: PersonName, commsMethod: CommunicationMethod) {
 self.name = name
 preferredCommunicationMethod = commsMethod
 }
 
 var displayName: String {
 return "\(name.givenName) \(name.familyName)"
 }
 }
 
 enum Role: String {
 case captain = "Captain"
 case firstOfficer = "First Officer"
 case secondOfficer = "Second Officer"
 case chiefEngineer = "Chief Engineer"
 case councillor = "Councillor"
 case securityOfficer = "Security Officer"
 case chiefMedicalOfficer = "Chief Medical Officer"
 }
 
 var crew = Dictionary<Role, Person>()
 crew[.captain] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)
 crew[.firstOfficer] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)
 crew[.chiefEngineer] = Person(givenName: "Geordi", familyName: "LaForge", commsMethod: .textMessage)
 
 // << TicTacToe >>
 enum GridPosition: String {
 case player1 = "o"
 case player2 = "x"
 case empty = " "
 }
 
 struct TicTacToe {
 var girdStorage: [[GridPosition]] = []
 
 subscript(row: Int, column: Int) -> GridPosition {
 get {
 return girdStorage[row][column]
 }
 set(newValue) { //(newValue) 생략가능
 girdStorage[row][column] = newValue
 }
 }
 
 init() {
 girdStorage.append(Array(repeating: .empty, count: 3))
 girdStorage.append(Array(repeating: .empty, count: 3))
 girdStorage.append(Array(repeating: .empty, count: 3))
 }
 // 직접 입력할 때 사용하기 위해 추가
 //    mutating func placePlayer(player: GridPosition, row: Int, column: Int) {
 //         girdStorage[row][column] = player
 //     }
 
 func gameStateString() -> String {
 var stateString = "-------------\n"
 stateString += printableString(forRow: girdStorage[0])
 stateString += "-------------\n"
 stateString += printableString(forRow: girdStorage[1])
 stateString += "-------------\n"
 stateString += printableString(forRow: girdStorage[2])
 stateString += "-------------\n"
 return stateString
 }
 
 func printableString(forRow row: [GridPosition]) -> String {
 var rowString = "| \(row[0].rawValue) "
 rowString += "| \(row[1].rawValue) "
 rowString += "| \(row[2].rawValue) |\n"
 return rowString
 }
 }
 
 var game = TicTacToe()
 
 //game.girdStorage[1][1] = .player1
 //print(game.gameStateString())
 //
 //game.girdStorage[0][2] = .player2
 //print(game.gameStateString())
 
 game[1, 1] = .player1
 print(game.gameStateString())
 
 game[0, 2] = .player2
 print(game.gameStateString())
 
 
 // 직접 입력받는 걸 추가해봄 근데 이게 playground에서 실행이 안되는거같은...
 //if let player = Int(readLine() ?? "1") {
 //    if let input = readLine()?.split(separator: " ").map({ Int($0) ?? 0 }) {
 //        let row = input[0]
 //        let col = input[1]
 //        
 //        if row >= 0 && row < 3 && col >= 0 && col < 3 {
 //            game.placePlayer(player: player == 1 ? .player1 : .player2, row: row, column: col)
 //            print(game.gameStateString())
 //        } else {
 //            print("올바른 행과 열을 입력하세요 (0부터 2까지의 값)")
 //        }
 //    } else {
 //        print("잘못된 입력입니다.")
 //    }
 //} else {
 //    print("잘못된 입력입니다.")
 //}
 
 // < Pug >
 struct Pug {
 let name: String
 }
 
 let pugs = [Pug]()
 
 typealias Grumble = [Pug] //  typealias 앞으로 pug배열을 Grumble로 사용할 수 있게 해주는..?
 
 var grumble = Grumble()
 
 let marty = Pug(name: "marty McPug")
 let wolfie = Pug(name: "Wolfgang Pug")
 let buddy = Pug(name: "Buddy")
 
 grumble.append(marty)
 grumble.append(wolfie)
 grumble.append(buddy)

// < 복잡한 타입에 대한 타입 별칭 사용 ...? >
enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammeFetcher {
    
    func fetchCurrentProgrammeName(forChannel channel: Channel,
                                   resultHandler: (String?, Error?) -> Void) {
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel,
                                resultHandler: (String?, Error?) -> Void) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgrammeFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { programmeName, error in
    print(programmeName ?? "N/A")
})
*/

// < 속성 관리자 - UserManager >
//class UserManager { // 변수 바뀔 때 호출되는거
//    var currentUserName: String = "Emmanuel Goldstein" {
//        willSet (newUserName) { // 값을 쓰기전
//            print("Goodbye to \(currentUserName)")
//            print("I hear \(newUserName) is on their way")
//        }
//        didSet (oldUserName) { // 쓴 후
//            print("Welcome to \(currentUserName)")
//            print("I miss \(oldUserName) already!")
//        }
//    }
//}
class UserManager { // 변수 바뀔 때 호출되는거
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet { // 값을 쓰기전
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way")
        }
        didSet { // 쓴 후
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manager = UserManager()
print(manager.currentUserName)
manager.currentUserName = "Dade Murphy"
