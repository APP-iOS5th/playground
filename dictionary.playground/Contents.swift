// dictionary
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
        
    var displayName: String{
        return "\(name.givenName) \(name.familyName)"
        }
}

var crew = Dictionary<String, Person> ()

crew["Captain"] = Person(givenName: "JEAN", familyName: "picard", commsMethod: .phone)

var personName = PersonName(givenName:"jang",familyName:"picard")
crew["Captain"] = Person(name:personName, commsMethod: .phone)


let roles = Array(crew.keys)
print(roles)

let firstRole = roles.first!
let cmo = crew[firstRole]
print("\(firstRole): \(cmo?.displayName ?? "N/A")")

