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

// 1.저자의 상세 정보를 출력하는 클로저 정의 (입력 없음, 출력 없음)

// 클로저 PersonName과 Person을 사용한 클로저
//                         ↓ ↓ ↓ ↓ ↓ ↓ = 반환 타입 (Void : 어떤 값도 돌려주지 않음)
// let printAuthorDetails: () -> Void = {
let printAuthorDetails: () -> () = {
    let name = PersonName(givenName: "Kyusang", middleName: "Shark", familyName: "Hwang")
    let author = Person(name: name)
    
    print(author.displayString)
}

printAuthorDetails()

// 2. Person 객체를 생성하는 클로저의 정의 (입력 없음, 출력 있음)

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author // class에 instance
}
let author = createAuthor()
print(author.displayString)


// 3. 사람의 세부 사항을 출력하는 클로저 정의 (String 입력, 출력 없음)
let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    print(person.displayString)
}
printPersonsDetails("Kathleen", "Mary", "Moon")


// 4. Person 객체를 생성하는 클로저의 정의 (String 입력, Person 출력)
let createPerson: (String, String, String) -> Person = { given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    return person
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)
