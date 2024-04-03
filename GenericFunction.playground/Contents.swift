
func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, winthKeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    var duplicates = [KeyType: ItemType]()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}

let awards: Set<String> = ["Bast Director",
                         "Best Picture",
                         "Best Original Scr",
                         "Best International Feature"]

let oscars2020 = makeDuplicates(of: "Parasite", winthKeys: awards)
print(oscars2020["Best Picture"] ?? "")
