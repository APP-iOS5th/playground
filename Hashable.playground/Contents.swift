//해시블: 고유한값을 저장할수 있음, 함수 만들고 사용해야함, 등호 연산도 필요함
struct Person: Hashable {
    var name: String
    var age: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
    
    //해쉬테이블 비교연산자
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 35)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 20)

peopleSet.insert(person3)
print(peopleSet.count)
print(peopleSet)
