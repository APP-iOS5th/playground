class RecentList<나중에_들어올_타입> {
    var slot1: 나중에_들어올_타입?
    var slot2: 나중에_들어올_타입?
    var slot3: 나중에_들어올_타입?
    var slot4: 나중에_들어올_타입?
    var slot5: 나중에_들어올_타입?
    
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

