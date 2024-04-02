import UIKit

struct Person: Hashable {
    var name: String //스트링 인트는 해셔블
    var age: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name) //고유한 값 더하기 고유한 값 고유한 값으로 비교?
        hasher.combine(age)
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool { //내 안에서 비교가 아니고 다른 제 3자랑 비교라 전역 함수? static?
        return lhs.name == rhs.name //&& lhs.age == rhs.age // 비교연산자도 커스텀하게 만듦?
    }
    
    //static func == (lhs: Person, rhs: Person) -> Bool {
    //  return lhs.hashValue == rhs.hashValue
    
//    var hashValue: Int{
//        var hasher = Hasher()
//        self.hash(into: &hasher)
//        return hasher.finalize()
//    }
}

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 30) //person1 과 같은 값이라는걸 알고있는거야 hash 때문에

peopleSet.insert(person3)

print(peopleSet.count)
