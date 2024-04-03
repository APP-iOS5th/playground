/*
 제네릭(매우 중요)
 1. 코드 재사용: 여러 타입에 대해 재사용할 수 있음
 2. 타입 안전성 보장: 타입 검사를해줌, 런타임 에러 방지
 3. 코드의 가독성
 나중에 들어올 타입
 */

class RecentList<나중에_들어올_타입> {
    var slot1: 나중에_들어올_타입?
    var slot2: 나중에_들어올_타입?
    var slot3: 나중에_들어올_타입?
    var slot4: 나중에_들어올_타입?
    var slot5: 나중에_들어올_타입?
    
    //슬롯 5개를 넣어서 한개씩 밀어 넣으면서 값을 저장
    func add(recent: 나중에_들어올_타입) {
        slot5 = slot4
        slot4 = slot3
        slot3 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
    func getAll() -> [나중에_들어올_타입] {
        var recent = [나중에_들어올_타입]()
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
lastCalledList.add(recent:jane)
lastCalledList.add(recent: rod)

let lastCalled = lastCalledList.getAll()
for person in lastCalled {
    print(person.name)
}
