<<<<<<< HEAD
class RecentList<ListItemType> {
    var slot1: ListItemType?
    var slot2: ListItemType?
    var slot3: ListItemType?
    var slot4: ListItemType?
    var slot5: ListItemType?
    
    func add(recent: ListItemType) {
=======
class RecentList<나중에_들어올_타입> {
    var slot1: 나중에_들어올_타입?
    var slot2: 나중에_들어올_타입?
    var slot3: 나중에_들어올_타입?
    var slot4: 나중에_들어올_타입?
    var slot5: 나중에_들어올_타입?
    
    func add(recent: 나중에_들어올_타입) {
>>>>>>> main
        slot5 = slot4
        slot4 = slot3
        slot3 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
<<<<<<< HEAD
    func getAll() -> [ListItemType] {
        var recent = [ListItemType]()
=======
    func getAll() -> [나중에_들어올_타입] {
        var recent = [나중에_들어올_타입]()
>>>>>>> main
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
<<<<<<< HEAD
recentlyCopiedList.add(recent: "Lsst")

=======
recentlyCopiedList.add(recent: "Last")
>>>>>>> main
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

<<<<<<< HEAD
lastCalledList.add(recent: rod)
lastCalledList.add(recent: jane)
lastCalledList.add(recent: freddy)
=======
lastCalledList.add(recent: freddy)
lastCalledList.add(recent: jane)
lastCalledList.add(recent: rod)
>>>>>>> main

let lastCalled = lastCalledList.getAll()
for person in lastCalled {
    print(person.name)
}
