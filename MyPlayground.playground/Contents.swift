// Hashable

struct Person: Hashable {
    var name: String
    var age: Int
    
    func hash(into hasher: inout Hasher) {                  // 지역 함수
        hasher.combine(name)
        hasher.combine(age)
    }   // 이름 또는 나이를 통해 해시값으로 구분
    
    static func == (lhs: Person, rhs: Person) -> Bool {     // 전역 함수
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 30)

peopleSet.insert(person3)
print(peopleSet.count)      // person1과 person3은 같은 해시값
