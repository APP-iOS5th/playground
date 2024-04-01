import UIKit

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "UK"
    
    var displayString: String {
        "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
}

let person = Person(givenName: "one", middleName: "two", familyName: "three")
print(person.displayString)
