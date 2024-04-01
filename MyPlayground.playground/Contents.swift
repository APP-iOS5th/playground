
struct PersonName {
    let givenName: String
    let middleName: String
    var familyName: String
     
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
     
    mutating func change(familyName: String) {
        self.familyName = familyName
    }
}

class Person {
     
    let birthName: PersonName
    var currentName: PersonName
    var countryOfResidence: String
     
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
     
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

let printAuthorDetails: (String, String, String) -> Void = {
    given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name, countryOfResidence: "KR")
    
    print(author.displayString)
}

printAuthorDetails("Inho", "Harry", "Lee")

let createPerson: (String, String, String) -> Person = {
    given, middle, family in
    let name = PersonName(givenName: given, 
                          middleName: middle,
                          familyName: family)
    let person = Person(name: name, countryOfResidence: "KR")
    
    return person
}

let me = createPerson("Inho", "Harry", "Lee")
print(me.displayString)
