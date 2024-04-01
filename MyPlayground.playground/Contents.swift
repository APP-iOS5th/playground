
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

/* Void 대신()*/
let printAuthorDetails: () -> Void = {
    let name = PersonName(givenName: "Seonggeun", middleName: "Mosi", familyName: "An")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()


let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}

let author = createAuthor()
print(author.displayString)


//String input !!No Output
let printPersonDetails: (String, String, String) -> Void = {
    given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name:name)
    print(author.displayString)
}

printPersonDetails("Kathleen", "Mary", "Moon")


//String Input  Output is OK
let createPerson: (String, String, String) -> Person = { given,
  middle, family in
    let name = PersonName(givenName: given,
                          middleName: middle,
                          familyName: family)
    let person = Person(name: name)
    return person
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)
