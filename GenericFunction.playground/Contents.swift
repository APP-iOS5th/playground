
// key는 고유값이어야하므로 Hashable protocol의 제약조건을 추가한다
func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, withKeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    var duplicates = [KeyType: ItemType] ()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}


let awards: Set<String> = ["Best Director", "Best Picture", "Best Original Screenplay", "Best International Feature"]
let oscars2020 = makeDuplicates(of: "Parasite", withKeys: awards)
print(oscars2020["Best Picture"] ?? "")
print(oscars2020["Best International Feature"] ?? "")
