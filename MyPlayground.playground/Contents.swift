class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    init(givenName: String, middleName: String, familyName: String){
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String{
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
}

var person = Person(givenName: "Jungman", middleName: "Dan", familyName: "Bae")

final class Family: Person {
    let relationship: String
    
    init(givenName: String,
         middleName: String,
         familyName: String,
         relationship: String){
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}
var family = Family(givenName: "Jungman", middleName: "Dan", familyName: "Bae",relationship: "Dad")
