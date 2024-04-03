

func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, withkeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    var duplicates = [KeyType: ItemType]()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}

let awards: Set<String> = ["Best Director",
                         "Best Picture",
                         "Best Original Secreenplay",
                         "Best International Feature"] 

let oscars2020 = makeDuplicates(of: "Parasite", withkeys: awards)

print(oscars2020["Best Picture"] ?? "")

print(oscars2020["Best International Feature"] ?? "")
