// ✨ Switch 로 모든 경우 처리하기 ♥️
// 스위치 문은 하나의 특정 값을 여러 방식으로 테스트해 실행 흐름을 제어할 수 있게 함
// 🎬 장면을 묘사한 후 북/남/동/서쪽으로 이동하는 명령을 입력해 이동한다

// 🗺️ 이동할 수 있는 방향을 나타내는 열거형
enum CompassPoint {
    case north
    case south
    case east
    case west
}

// 🫧 방향을 보고 플레이어가 볼 수 있는 것을 설명하는 함수
// 각각 CompassPoint 케이스에 대해 다른 메시지 출력을 위해 스위치문 사용
func lookTowards(_ direction: CompassPoint) {
    switch direction {
    case .north:
        print("To the north lies a winding road")
    case .south:
        print("To the south is the Prancing Pony tavern")
    case .east:
        print("To the east is a blacksmith")
    case .west:
        print("To the west is the town sqaure")
    }
}

lookTowards(.south)

enum Item {
    case key
    case lockedDoor
    case openDoor
    case bluntKnife
    case sharpeningStone
    case sharpKnife
}

// 🧼 두 아이템을 결합해 새 아이템을 만드는 함수
// 결합할 수 없는 경우 nil 반환함
func combine(_ firstItem: Item, with secondItem: Item) -> Item? {
    switch(firstItem, secondItem) {
        
    case (.key, .lockedDoor) :
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

enum Character: String {
    case wizard
    case bartender
    case dragon
}

// 🧌 플레이어가 만날 수 있는 캐릭터를 정의하고, 무엇을 말하고, 누구에게 말할지에 따라
// 상호작용이 달라지는 함수
func say(_ textToSay: String, to character: Character? = nil) {
    switch(textToSay, character) {
        
    case("abracadabra", .wizard):
        print("The wizard says, \"Hey, that's my line!\"")
        
    case("Pour me a drink", .bartender?):
        print("The bartender pours you a drink")
        
    case("Can I have some of your gold?", .dragon?):
        print("The dragon burns you to death with his fiery breath")
        
    case(let textSaid, nil):
        print("You say \"\(textSaid)\", to no-one.")
        
    // _ 는 와일드 카드🃏 라고 부르고, 무엇이든 될 수 있음 (받아냄)
    // 위 조건이 아닌 모든 애들에 대해서는 말 없이 널 보고 있다는 구문 출력함...
    case (_, let anyCharacter?):
            print("The \(anyCharacter) looks at you, blankly")
    }
}

say("Is anybody there?")
say("Pour me a drink", to: .bartender)
say("Can I open a tab?", to: .bartender)
