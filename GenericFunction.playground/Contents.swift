

func makeDUplicated<ItemType, KeyType: Hashable>(of item: ItemType, withKeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    
    var duplicated = [KeyType: ItemType]()
    
    for key in keys {
        duplicated[key] = item
    }
    
    return duplicated
}

let awards: Set<String> = ["Best Director", "Best Picture", "Best Original Screenplay", "Best International Feature"]

let oscars2020 = makeDUplicated(of: "Parasite", withKeys: awards)
print(oscars2020["Best Picture"] ?? "")
print(oscars2020["Best International Feature"] ?? "")
