import UIKit

//Chapter7
//구조체는 value타입
struct PersonName{
    let givenName: String
    let middleName: String
    var familyName: String
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    mutating func change(familyName: String){
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

//Chapter8
//클로저: 순수함수
//클로저있음으로써 함수 파라미터를 전달할 수 있고 함수 만들수 있음
//클로저도 인수에 기본값을 정의 할수 없음

let printAuthorDetails: () -> Void //Void대신 ()해도됨
    = {
    let name = PersonName(givenName: "Jiyong", middleName: "Mid", familyName: "Cha")
    let author = Person(name: name)
    print(author.displayString)
}
printAuthorDetails()

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keitch", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    return author
}
let author = createAuthor()
print(author.displayString)

//파라미터를 전달하는 구조 input은 있지만 output은 없는구조, in은 클로저 인수를 받는 키워드
let printPersonDetails: (String, String, String) -> Void = {
    given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let author = Person(name: name)
    print(author.displayString)
}
printPersonDetails("Kathleen", "Mary", "Moon")

let createPerson: (String, String, String) -> Person = {
    given, middle, family in
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    return person
}
let felix = createPerson("Felix", "Robert", "Moon")
print(felix.displayString)


