

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    init(givenName: String, middleName: String, familyName: String, countryOfResidence: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
  
    var displayString : String {
        return "\(fullName()) - Location: \(countryOfResidence)"
    }
    
    
}

var person = Person(givenName: "Jungman", middleName: "Dan", familyName: "Bae", countryOfResidence: "KR")
