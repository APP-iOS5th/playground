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
    
    func fullName() -> String{
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(fullName()) - Location: \(countryOfResidence)"
    }
}


