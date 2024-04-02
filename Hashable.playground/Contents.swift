import UIKit

// ♥️ Hash ✨
// Set(집합)의 요소는 정렬되지 않은 상태로 저장되며 각 고유 요소는 한 번만 보유됨
// 집합은 각 요소가 Hashable 프로토콜을 준수해야 함

// Hash 란 다양한 길이를 가진 데이터를 고정된 길이 가진 데이터로 매핑한 값
// 구조체와 프로토콜
// 구조체는 붕어빵 틀 🐟
struct Person: Hashable {
    var name: String
    var age: Int
    
    // String 과 Int 는 각각 Hashabe 한데, 걔네를 combine
    // 을 통해 각 고유한 값을 (하나씩이면 고유하지 않은데) 고유하게 해줌
    // func 은 빵에 작용 🐟
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
    
    // 오버라이드한 비교 함수 (중복 체크)
    // 기존에는 이런 함수가 필요했는데 이걸 hash 함수 combine 통해 표현
    // static func 은 틀에 작용 (전역함수) 🐟
    static func == (lhs: Person, rhs: Person) -> Bool {
        // return lhs.name == rhs.name && lhs.age == rhs.age
        return lhs.hashValue == rhs.hashValue
    }
    
    // Hash Value 출력하기
    var hashValue: Int {
        var hasher = Hasher()
        self.hash(into: &hasher)
        return hasher.finalize()
    }
}

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 35)

let hashResult = person1.hashValue
print("Hash Result:", hashResult)

var peopleSet: Set<Person> = [person1, person2]

// name, age 를 통해 비교하기에 person1과 3이 같다고 인지됨
let person3 = Person(name: "Alice", age: 30)

peopleSet.insert(person3) // 요소 삽입
print(peopleSet.count)


/**
 Swift에서 Hashable 프로토콜을 채택하려면 hash(into:) 메서드뿐만 아니라 == 연산자도 구현해야 합니다.

 Hashable 프로토콜은 Equatable 프로토콜을 상속받고 있습니다. 따라서 Hashable을 채택하려면 Equatable도 함께 채택해야 하고, 이는 == 연산자를 구현해야 함을 의미합니다.

 == 연산자는 두 객체가 동등한지를 판단하는 역할을 합니다. 해시 값이 같다고 해서 두 객체가 동등한 것은 아니기 때문에, == 연산자를 통해 실제로 두 객체의 동등성을 확인해야 합니다.

 따라서 Hashable 프로토콜을 채택할 때는 다음과 같이 == 연산자와 hash(into:) 메서드를 모두 구현해야 합니다.
 **/
