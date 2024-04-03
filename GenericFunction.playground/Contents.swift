
/**  제네릭을 사용한 함수 사용  **/
/// 1. 제네릭 함수 생성
///     • 여러 키에 대해 동일한 값을 딕셔너리에 삽입하는 제네릭 함수 생성.
/// 2. KeyType을 추가한 제네릭 함수
///     • 두 개의 제네릭 타입(ItemType, KeyType)을 사용하는 함수 생성.
/// 3. 제네릭 타입의 제약 조건 추가
///     • KeyType가 Hashbale을 준수해야 한다는 제약 조건을 추가.
/// 4. 함수사용 예시
///     • 입력 또는 출력에서 특정 타입을 추론할 수 있는 경우, 명시적으로 지정할 필요 없음.

// Hashable이라는 제약 조건으로 인해 Hash화 된 애들만 들어갈 수 있음. (String도 Hashable하니까 문제 없음)
func makeDuplicates<ItemType, KeyType: Hashable>(of item: ItemType, withKeys keys: Set<KeyType>) -> [KeyType: ItemType] {
    var duplicates = [KeyType: ItemType]()
    for key in keys {
        duplicates[key] = item
    }
    return duplicates
}

let awards: Set<String> = ["Best Director", "Best Picture", "Best Original Screenplay", "Best International Feature"]
let oscars2020 = makeDuplicates(of: "Parasite", withKeys: awards)

print(oscars2020["Best Picture"] ?? "")
print(oscars2020["Best International Feature"] ?? "")
