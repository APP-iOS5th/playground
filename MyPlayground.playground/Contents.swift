// 최광우꺼
// 2024-04-01

import UIKit

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

// () -> ()로 해도됨!
let printAuthorDetails: () -> Void = {
    let name = PersonName(givenName: "광우", middleName: "미친소", familyName: "최")
    let author = Person(name: name)
    print(author.displayString)
}

printAuthorDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "광우", middleName: "빛나는소", familyName: "최")
    let author = Person(name: name)
    
    return author
}

let author = createAuthor()
print(author.displayString)

let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}

printPersonsDetails("광우", "넓은소", "최")

let createPerson: (String, String, String) -> Person = { (given, middle, family) in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    
    return person
}

let createdPerson = createPerson("광우", "음", "최")
print(createdPerson.displayString)
// 함수가 이름이 있는 Closer이다! 로 이해하면 편하겠다!
