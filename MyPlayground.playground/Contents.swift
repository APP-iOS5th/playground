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

protocol Saveable {
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
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
