//해쉬 프로토콜
struct Person: Hashable {
    //각각 고유한 해쉬 함수를 가지고있음
    var name: String
    var age: Int
    
    func hash(into hasher: inout Hasher) {
        
        //2개다 고유한 값을
        hasher.combine(name)
        hasher.combine(age)
    }
    
    // 추가요소인지 기본에 있던 요소인지 비교하는 함수
    // 해쉬값을 비교하는 함수
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
let person3 = Person(name: "Alice", age: 20)


var peopleSet : Set<Person> = [person1, person2]



peopleSet.insert(person3)

print(peopleSet.count)


