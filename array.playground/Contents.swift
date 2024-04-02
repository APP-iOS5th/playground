let fibonacciArray : Array <Int> = [1,1,2,3,5,8,13,21,34]
let fibonacciSet : Set<Int> = [1,1,2,3,5,8, 13,21,34]


//집합에 요소를 추가하거나 삭제
//문자열 set안에 dog가 있는지 확인(contains)
var animals : Set<String> = ["cat","dog","mouse","elephant"]
animals.insert("rabbit")
print(animals.contains("dog"))
print(animals.contains("dog"))
animals.remove("dog")

// hash
struct Person: Hashable {
    var name : String
    var age : Int
//각각 고유한 함수를 값을 가지고 두개를 combine해주어 동시에 비교해줌
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }

}

let person1 = Person (name:"kyla", age:26)
let person2 = Person(name:"rowell",age:25)

var peopleSet : Set <Person> = [person1, person2]
let person3 = Person(name:"kyla",age:26)
//person1과 같은 정보의 사람이 들어왔을때는?
peopleSet.insert(person3)
print(peopleSet.count)
// count하니까 2가 나옴 (나이와 이름이 같은 동명이인이라고 생각할수있지만 그게아니고 같은 사람으로 인식함 그래서 2명으로 인식) 만약 나이가 다르다면 3명으로 인색했겠지?
