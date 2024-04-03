//제네릭 함수

//밑에함수는 Hashable프로토콜로 인해 제약적이게 됨
func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, withKeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    var duplicates = [KeyType: ItemType]()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}

let awards: Set<String> = ["Best Director",
                           "Best Picture",
                           "Best Original Screenplay",
                           "Best International Feature"]

let oscrs2020 = makeDuplicates(of: "Parasite", withKeys: awards)
print(oscrs2020["Best Picture"] ?? "")

print(oscrs2020["Best International Feature"] ?? "")
