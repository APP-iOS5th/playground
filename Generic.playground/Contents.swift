//제내릭 나중에 들어올 타입 -> 대명살 ㅗ대충 통일시켜놓고..나중에 정의해주는건가?

class RecentList<ListiTemType> {
    var slot1: ListiTemType?
    var slot2: ListiTemType?
    var slot3: ListiTemType?
    var slot4: ListiTemType?
    var slot5: ListiTemType?
    
    func add(recent: ListiTemType) {
        slot5 = slot4
        slot4 = slot3
        slot3 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
    func getAll() -> [ListiTemType] {
        var recent = [ListiTemType]()
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
lastCalledList.add(recent: jane)
lastCalledList.add(recent: rod)

let lastCalled = lastCalledList.getAll()
for person in lastCalled {
    print(person.name)
}
