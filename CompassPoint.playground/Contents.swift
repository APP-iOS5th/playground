
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
