
/**  Switch 실습  **/

/// 이동할 수 있는 방향을 나타내는 열거혈을 정의
enum CompassPoint {
    case north
    case south
    case east
    case west
}

/// 방향을 보고 플레이어가 볼 수 있는 것을 설명하는 함수를 생성.
/// - Parameter direction: 방향에 맞는 문구를 출력
func lookTowrds(_ direction: CompassPoint) {
    switch direction {
    case .north:
        print("To the north lies a winding road")
    case .south:
        print("To the south is the Prancing Pony tavern")
    case .east:
        print("Th the east is a blacksmith")
    case .west:
        print("To the west is the town square")
    }
}

lookTowrds(.south)



/// 조합할 수 있는 아이템의 열거형을 정의
enum Item {
    case key
    case lockedDoor
    case openDoor
    case bluntKnife
    case sharpeningStone
    case sharpKnife
}

/// 두 아이템을 결합하여 새 아이템을 만드는 함수
/// - Parameters:
///   - firstItem: 첫 번째 아이템
///   - secondItem: 두 번째 아이템
/// - Returns: 두 아이템의 결합 조건에 맞는 새로운 아이템을 반환하고 결합할 수 없는 경우 nil을 반환.
func combine(_ firstItem: Item, with secondItem: Item) -> Item? { // Switch 문의 특징 : 복합으로 가능
    switch(firstItem, secondItem) {
    case (.key, .lockedDoor):
        print("You have unlocked the door!")
        return .openDoor
    case (.bluntKnife, .sharpeningStone):
        print("Your knife is now sharp")
        return .sharpKnife
    default:
        print("\(firstItem) and \(secondItem) cannot be combined")
        return nil
    }
}

let door = combine(.key, with: .lockedDoor)
let oilAndWather = combine(.bluntKnife, with: .lockedDoor)
