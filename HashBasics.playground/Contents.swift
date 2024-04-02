
import UIKit

struct Person: Hashable {
    var name: String
    var age: Int
    
    //hash 함수와 등호(==)함수를 같이 사용해야함!
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name
    }
}

let person1 = Person(name: "bin", age: 20)
let person2 = Person(name: "jo", age: 21)

var peopleSet: Set<Person> = [person1, person2]

print(peopleSet)

let person3 = Person(name: "bin", age: 25)

peopleSet.insert(person3)

print(peopleSet)
