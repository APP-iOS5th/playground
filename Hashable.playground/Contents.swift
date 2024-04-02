// Hashable 프로토콜
struct Person: Hashable {
    var name: String
    var age: Int
    
    // 해시값 지정
    // 지역 함수
    func hash(into hasher: inout Hasher) {
        // name, age를 해시함수로 비교함
        hasher.combine(name)
        hasher.combine(age)
    }
    
    // 중복 체크
    // 전역 함수
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    var hashValue: Int {
        var hasher = Hasher()
        self.hash(into: &hasher)
        return hasher.finalize()
    }
}

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)

let hashResult = person1.hashValue
print("Hash result: ", hashResult)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 20)

peopleSet.insert(person3) // 지정된 해시값으로 중복 확인

print(peopleSet.count) // 3(이름으로만 해시값 지정할 경우 2)
