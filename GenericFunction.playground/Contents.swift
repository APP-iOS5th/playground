//제네릭 함수

func makeDuplicates<ItemType>(of item: ItemType, withKeys keys: Set<String>) ->
    [String: ItemType] {
    var duplicates = [String: ItemType]()
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
