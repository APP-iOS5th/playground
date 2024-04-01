import UIKit

var greeting = "Hello, playground"


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


let printAuthorDetails: () -> Void = {
    let name = PersonName(givenName: "Jungman", middleName: "Dan", familyName: "Bae")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()


let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith",
                          middleName: "David",
                          familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)


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

