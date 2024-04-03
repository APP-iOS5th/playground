

func makeDuplicates<ItemType>(of item: ItemType, withkeys keys: Set<Ke>) -> [String: ItemType] {
    var duplicates = [String: ItemType]()
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
