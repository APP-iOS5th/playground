
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
        return  "\(fullName()) - Location: \(countryOfResidence)"
    }

}

var person = Person(givenName: "Jaesun", middleName: " ", familyName: "Eo")

final class Family: Person {
    let relationship: String
    init(givneName: String,
         middleName: String,
         familyName: String,
         relationship: String) {
        self.relationship = relationship
        super.init(givenName: givneName, middleName: middleName, familyName: familyName)
    }
}

var fmaily = Family(givneName: "Jaesun", middleName: "js", familyName: "Eo", relationship: "me")
