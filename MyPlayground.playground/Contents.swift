class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    init (givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    var displayString: String {
        return "\(fullName()) - Location: \(countryOfResidence)"
    }
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
}

let jin = Person(givenName: "Jin", middleName: "J.", familyName: "Park")
jin.countryOfResidence = "CA"
print(jin.displayString)

final class Family: Person {
    let relationship: String
    
    init(givenName: String,
         middleName: String,
         familyName: String,
         relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Jin", middleName: "J.", familyName: "Park", relationship: "Dad")
print(family.givenName)

