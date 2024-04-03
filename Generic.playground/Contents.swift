import UIKit

//MARK: - generic과 any의 차이
//Any와 제네릭은 서로 다른 목적으로 사용됩니다.
//
//Any는 Swift의 모든 타입을 나타내는 특별한 타입입니다. Any 타입은 어떤 타입의 값도 저장할 수 있지만, 값에 대한 구체적인 타입 정보는 없습니다. 따라서 Any 타입의 값을 사용할 때는 타입 캐스팅을 통해 실제 타입으로 변환해야 합니다. Any는 주로 타입에 대한 유연성이 필요한 경우에 사용됩니다.
//
//제네릭(Generic)은 타입에 대한 일반화를 제공하는 기능입니다. 제네릭을 사용하면 코드를 작성할 때 특정 타입에 의존하지 않고, 여러 타입에 대해 동일한 코드를 재사용할 수 있습니다. 제네릭은 코드의 유연성, 재사용성, 타입 안정성을 높이는 데 사용됩니다.
//
//제네릭을 사용하는 이유는 다음과 같습니다:
//
//코드 재사용성 향상:
//제네릭을 사용하면 동일한 코드를 여러 타입에 대해 재사용할 수 있습니다.
//타입별로 중복된 코드를 작성할 필요가 없어 코드의 중복을 줄일 수 있습니다.
//
//타입 안정성 보장:
//제네릭은 컴파일 시점에 타입 검사를 수행하므로 타입 안정성을 보장합니다.
//잘못된 타입의 사용을 컴파일 시점에 발견할 수 있어 런타임 에러를 방지할 수 있습니다.
//
//코드의 가독성 및 유지보수성 향상:
//제네릭을 사용하면 코드의 의도가 명확해지고 가독성이 향상됩니다.
//타입에 대한 일반화된 코드를 작성할 수 있어 코드의 유지보수성이 좋아집니다.
//
//성능 향상:
//제네릭은 컴파일 시점에 타입이 결정되므로 불필요한 타입 변환이나 동적 디스패치 오버헤드가 없습니다.
//제네릭을 사용하면 코드 실행 속도가 향상될 수 있습니다.
//
//다음은 제네릭을 사용한 예시입니다:

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
swapValues(&x, &y)
print(x, y) // 20, 10

var str1 = "Hello"
var str2 = "World"
swapValues(&str1, &str2)
print(str1, str2) // "World", "Hello"


//위의 코드에서 swapValues 함수는 제네릭 타입 T를 사용하여 작성되었습니다. 이 함수는 Int 타입과 String 타입 모두에서 동작할 수 있습니다. 제네릭을 사용함으로써 타입에 대한 유연성을 갖추면서도 타입 안정성을 보장할 수 있습니다.
//
//제네릭은 Any와 달리 컴파일 시점에 타입 검사를 수행하고, 코드의 재사용성과 유지보수성을 향상시키는 데 도움이 됩니다. 따라서 제네릭은 Swift에서 매우 강력하고 유용한 기능 중 하나입니다.


//MARK: - Generic

class RecentList<ListItemType> {
    var slot1: ListItemType?
    var slot2: ListItemType?
    var slot3: ListItemType?
    var slot4: ListItemType?
    var slot5: ListItemType?
    
    func add(recent: ListItemType) {
        slot5 = slot4
        slot4 = slot3
        slot3 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
    func getAll() -> [ListItemType] {
        
        var recent = [ListItemType]()
        
        if let slot1 = slot1 {
            recent.append(slot1)
        }
        if let slot2 = slot2 {
            recent.append(slot2)
        }
        if let slot3 = slot3 {
            recent.append(slot3)
        }
        if let slot4 = slot4 {
            recent.append(slot4)
        }
        if let slot5 = slot5 {
            recent.append(slot5)
        }
        
        return recent
    }
    
    
}

//뮨자열 추가 및 줄력
let recentlyCopiedList = RecentList<String>()
recentlyCopiedList.add(recent: "First")
recentlyCopiedList.add(recent: "Next")
recentlyCopiedList.add(recent: "Last")

var recentlyCopied = recentlyCopiedList.getAll()

print(recentlyCopied)


class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}

let rod = Person(name: "Rod")
let jane = Person(name: "Jane")
let freddy = Person(name: "Freddy")

let lastCalledList = RecentList<Person>()

lastCalledList.add(recent: freddy)
lastCalledList.add(recent: jane)
lastCalledList.add(recent: rod)

let lastCalled = lastCalledList.getAll()

for person in lastCalled {
    print(person.name)
}
