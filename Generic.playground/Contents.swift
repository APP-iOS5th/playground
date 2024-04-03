import UIKit

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
        var recent: [ListItemType] = []
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

let recentList = RecentList<String>()
recentList.add(recent: "1")
print(recentList.getAll())
recentList.add(recent: "2")
print(recentList.getAll())
recentList.add(recent: "3")
print(recentList.getAll())
recentList.add(recent: "4")
print(recentList.getAll())
recentList.add(recent: "5")
print(recentList.getAll())
recentList.add(recent: "6")
print(recentList.getAll())
recentList.add(recent: "7")
print(recentList.getAll())
recentList.add(recent: "8")
print(recentList.getAll())
recentList.add(recent: "9")
print(recentList.getAll())
recentList.add(recent: "10")
print(recentList.getAll())

