import UIKit


// 해시 함수: 같은 값을 넣었을 때 동일한 해시 값이 나온다.는 것이 큰 특징
// 해시 함수는 임의 크기의 데이터를 고정된 크기의 유일한 값(해시 값)으로 매핑하는 함수
// 결정성(Determinism): 동일한 입력 값에 대해 항상 같은 해시 값을 반환합니다.
// 고유성(Uniqueness): 다른 입력 값은 가능한 한 서로 다른 해시 값을 생성하려고 합니다. 완벽한 고유성을 보장하는 것은 불가능하므로, 서로 다른 입력 값이 동일한 해시 값을 가지는 경우를 '충돌(Collision)'이라고 합니다.

// Hashable 프로토콜은 스위프트의 타입이 해시 가능하다는 것을 나타냅니다. 즉, 해당 타입의 인스턴스를 해시 함수를 통해 고유한 값으로 변환할 수 있음을 의미합니다. 이 프로토콜을 준수하는 타입은 Set의 요소가 될 수 있고, 딕셔너리의 키로 사용될 수 있습니다.
// Hashable 프로토콜을 통해 그런 기능(고유한 값을 가지도록 만듬)을 가져오는 것 _ 그래서 집합 각 요소는 해당 프로토콜을 준수하도록 함
// 사용자 정의 Hashable 구현

struct Person: Hashable {
    var name: String
    var age: Int
    
    // 고유한 해시 값을 생성 (값을 구분짓기 위해)
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
    
    // == 연산자는 두 Person 객체가 동일한지 비교
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    // hash 값을 추출 하는 변수
    var hashValue: Int {
        var hasher = Hasher()
        self.hash(into: &hasher)
        return hasher.finalize()
    }
}

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)

var peopleSet: Set<Person> = [person1, person2]

let person3 = Person(name: "Alice", age: 30)    // person1 과 이름과 나이가 같은 경우

peopleSet.insert(person3)

print(peopleSet.count)

print("person1 Hash result:", person1.hashValue)
print("person2 Hash result:", person2.hashValue)
print("person3 Hash result:", person3.hashValue)
