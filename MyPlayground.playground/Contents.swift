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

// 저자의 상세 정보를 출력하는 클로저 정의(입력,출력 없음)
let printAuthorsDetails: () -> Void = { // 파라미터가 없고 리턴이 없는 형식인 클로저를 변수에 대입
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let autor = Person(name: name)
    print(autor.displayString)
}

printAuthorsDetails()

// Person 객체를 생성하는 클로저 정의(입력 없음, Person 출력)
let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)

// 사람의 세부 사항을 출력하는 클로저 정의 (String 입력, 출력 없음)
let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}
printPersonsDetails("Kathleen", "Mary", "Moon")


// Person 객체를 생성하는 클로저 정의 (String 입력, Person 출력)
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
