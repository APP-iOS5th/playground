import UIKit

//MARK: - genericFunction

//ket가 Hashable을 준수해야 한다는 제약 조건을 추가합니다.
func makeDuplicate<ItemType, KeyType: Hashable>(of item: ItemType, withKeys keys: Set<KeyType>) -> [KeyType : ItemType] {
    
    var duplicates = [KeyType : ItemType]()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}

let awards: Set<String> = ["Best Director", "Best Picture", "Best Original Screenplay", "Best International Feature"]
let oscar2020 = makeDuplicate(of: "parasite", withKeys: awards)
print(oscar2020["Best Picture"] ?? "")
print(oscar2020["Best International Feature"] ?? "")

