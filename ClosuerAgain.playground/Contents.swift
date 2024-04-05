
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
//아무것도 주고 받는게 없는 클로저
let printAuthorsDetails: () -> () = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    print(author.displayString)
}
printAuthorsDetails()

//반환값만 전달해주는 클로저
let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)

//주고 받기
let printPersonDetails: (String, String, String) -> () = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}
printPersonDetails("Keith","Mary", "Moon")

let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    return author
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)
