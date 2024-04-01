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
// closer
//let printAuthorsDetails: () -> Void = {
let printAuthorsDetails: () -> () = {
    let name = PersonName(givenName: "Jin", middleName: "J.", familyName: "Park")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorsDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}

let author = createAuthor()
print(author.displayString)

let printPersonDetails: (String, String, String) -> Void = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    print(person.displayString)
}

printPersonDetails("Kathleen", "Mary", "Moon")

let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)
