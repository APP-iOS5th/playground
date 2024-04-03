
/**  제네릭을 사용한 함수 사용  **/

// 내가 나중에 결절할 타입의 이름이 아이템이야
func makeDuplicates<ItemType>(of item: ItemType, withKeys keys: Set<String>) -> [String: ItemType] {
    var duplicates = [String: ItemType]()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}

let awards: Set<String> = ["Best Director", "Best Picture", "Best Original Screenplay", "Best International Feature"]
let oscars2020 = makeDuplicates(of: "Parasite", withKeys: awards)
print(oscars2020["Best Picture"] ?? "")
print(oscars2020["Best International Feature"] ?? "")
