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
        return "\(currentName.fullName()) -Location: \(countryOfResidence)"
    }
}


let printAuthorsDetails: () -> Void = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    print(author.displayString)
}


printAuthorsDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}

let author = createAuthor()
print(author.displayString)

let printPersonDetails: (String, String, String) -> Void = { given , middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}

printPersonDetails("Kathlean", "Mary", "Moon")

let creatPerson: (String, String, String) -> Person = {given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    return author
}

let felix = creatPerson("Falix", "Robert", "Moon")
print(felix.displayString)
