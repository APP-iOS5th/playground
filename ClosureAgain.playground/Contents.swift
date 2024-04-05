
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


//함수 정의부 : 혼자 실행하고 혼자 거지는 함수를 하나 만든다. (아무것도 주고받지 않은 클로저)
let printAuthorsDetails: () -> Void = { //변수처럼 지정했지만 함수야, 주는것도 받는것도 없는.
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    print(author.displayString)
}

//함수 실행부
printAuthorsDetails()


//함수 정의부 : 받는건 없으나 주는 건 있는 함수
let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}

//함수 실행부
let author = createAuthor()
print(author.displayString)


//let printPersonDetails = func (given: String, middle: String, family: String) {
//    
//}

//함수 정의부 : 받는거 있고 주는 거 없는 함수
let printPersonDetails: (String, String, String) -> Void = { given, middle, family in
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
//    print(author.displayString)
}

//함수 실행부 :
printPersonDetails("Kathleen", "Marry", "Moon")


//함수 정의부 : 받는거 있고 주는 거 있는 함수
let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}

//함수 실행부 :
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)
