//
//struct Person: Hashable {
//    var name: String
//    var age: Int
//    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//    }
//    
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//    
//    var hashValue: Int {
//        var hasher = Hasher()
//        self.hash(into: &hasher)
//        return hasher.finalize()
//    }
//}
//
//let person1 = Person(name: "Alice", age: 30)
//let person2 = Person(name: "Bob", age: 30)
//
//
//var peopleSet: Set<Person> = [person1, person2]
//
//let person3 = Person(name: "Bob", age: 32)
//
//peopleSet.insert(person3)
//
//print(peopleSet)
//print(person2 == person3)


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

enum Role: String {
    case captain = "Captain"
    case firstOfficer = "First Officer"
    case secondOfficer = "Second Officer"
    case chiefEngineer = "Chief Engineer"
    case councillor = "Councillor"
    case securityOfficer = "Security Officer"
    case chiefMedicalOfficer = "Chief Medical Officer"
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

var crew = Dictionary<Role, Person>()

crew[.captain] = Person(givenName: "Jean-Luc",
                         familyName: "Picard",
                         commsMethod: .phone)

crew[.firstOfficer] = Person(givenName: "William",
                               familyName: "Riker",
                               commsMethod: .email)

crew[.chiefEngineer] = Person(givenName: "Geordi",
                                familyName: "LaForge",
                                commsMethod: .textMessage)

crew[.secondOfficer] = Person(givenName: "Data",
                                familyName: "Soong",
                                commsMethod: .fax)

crew[.councillor] = Person(givenName: "Deanna",
                            familyName: "Troi",
                            commsMethod: .telepathy)

crew[.securityOfficer] = Person(givenName: "Tasha",
                                  familyName: "Yar",
                                  commsMethod: .subSpaceRelay)

crew[.chiefMedicalOfficer] = Person(givenName: "Beverly",
                                       familyName: "Crusher",
                                       commsMethod: .tachyons)


let roles = Array(crew.keys)

let firstRole = roles.first!
let cmo = crew[firstRole]
print("\(firstRole): \(cmo?.displayName ?? "N/A")")
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

let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)

moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
