
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
let person3 = Person(name: "Alice", age: 20)

print("person1 hash:", person1.hashValue)
print("person2 hash:", person2.hashValue)
print("person3 hash:", person3.hashValue)

var peopleSet: Set<Person> = [person1, person2]


peopleSet.insert(person3)

print(peopleSet.count)
print(peopleSet)
