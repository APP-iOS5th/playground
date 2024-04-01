import UIKit

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(countryOfResidence)"
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


var person: Person = Person(givenName: "Seongbin", middleName: "Edward", familyName: "Jo")

print(person.givenName)
print(person.middleName)
print(person.familyName)
print(person.countryOfResidence)
print(person.displayString)
print(person.fullName())


final class Family: Person {
    let relationshop: String
    
    init(givenName: String, middleName: String, familyName: String, relationshop: String) {
        self.relationshop = relationshop
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
    
}

var family: Family = Family(givenName: "Seongbin", middleName: "Edward", familyName: "Jo", relationshop: "본인")
