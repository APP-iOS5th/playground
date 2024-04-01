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
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(countryOfResidence)"
    }
    
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
}


var person = Person(givenName: "Chunghyun", middleName: "Ruel", familyName: "Lee")
    


final class Family: Person {
    let relationship: String
    
    init( givenName: String, middleName: String, familyName: String, relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Chunghyun", middleName: "Ruel", familyName: "Lee", relationship: "나")
