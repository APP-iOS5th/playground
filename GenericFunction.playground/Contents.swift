
func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, withKey keys: Set<KeyType>) -> [KeyType: ItemType] {
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

let oscars2020 = makeDuplicates(of: "Parasite", withKey: awards)
print(oscars2020["Best Picture"] ?? "")

print(oscars2020["Best International Feature"] ?? "")
