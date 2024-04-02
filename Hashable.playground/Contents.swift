
struct Person: Hashable {
    var name: String
    var age: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
    
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
print("Hash result:", hashResult)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 20)

peopleSet.insert(person3)

print(peopleSet.count)
print(peopleSet)
