//func combine(_ givenName: String, _ familyName: String) -> String {
//    return "\(givenName) \(familyName)"
//}
//
//func combine(_ integer1: Int, _ integer2: Int) -> Int {
//    return integer1 + integer2
//}
//
//let combinedString = combine("Finnley", "Moon")
//let combinedInt = combine(5, 10)
//
//print(combinedString)
//print(combinedInt)

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
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(countryOfResidence)"
    }
}

var person = Person(givenName: "Jungnam", middleName: "Dan", familyName: "Bae")

final class Family: Person {
    let relationships: String
    
    init(givenName: String, middleName: String, familyName: String, relationships: String) {
        self.relationships = relationships
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
}

var family = Family(givenName: "Jungnam", middleName: "Dan", familyName: "Bae", relationships: "Dad")
