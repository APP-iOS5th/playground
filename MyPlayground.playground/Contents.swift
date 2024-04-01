class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "UK"
    
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


