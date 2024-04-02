import UIKit

struct Person: Hashable {
    var name: String
    var age: Int
    
    // 해시함수를 만들어 줌으로 써 이름 또는 나이로 구분을 할 수 있는 함수
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
    
    // 해시프로토콜의 비교연산자 ->  중복 체크 (이름과 나이로)
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}
let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 20)

peopleSet.insert(person3)

print(peopleSet.count)

