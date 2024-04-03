import UIKit

// Hasable을 가지게되면 제약조건이 생긴다.
func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, withKeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    var duplicates: [KeyType: ItemType] = [:]
    
    for key in keys {
        duplicates[key] = item
    }
    
    return duplicates
}

let awards: Set<String> = ["Best Director", "Best Picture", "Best Original Screenplay", "Best International Feature"]

let oscars2020 = makeDuplicates(of: "Parasite", withKeys: awards)
print(oscars2020["Best Picture"] ?? "N/A")
