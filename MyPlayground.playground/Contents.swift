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
//let printAuthorDetails: (String, String, String) -> Void = {
//    given, middle, family in
//    let name = PersonName(givenName: given, middleName: middle, familyName: family)
//    let author = Person(name: name, countryOfResidence: "KR")
//    
//    print(author.displayString)
//}
//
//printAuthorDetails("Inho", "Harry", "Lee")
//
//let createPerson: (String, String, String) -> Person = {
//    given, middle, family in
//    let name = PersonName(givenName: given, 
//                          middleName: middle,
//                          familyName: family)
//    let person = Person(name: name, countryOfResidence: "KR")
//    
//    return person
//}
//
//let me = createPerson("Inho", "Harry", "Lee")
//print(me.displayString)
//

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
