
enum CompassPoint {
    case north
    case south
    case east
    case west
}

func lookToward(_ direction: CompassPoint) {
    switch direction {
    case .north:
        print("To the north lies a winding read")
    case .south:
        print("To the south is the Prancing Pony tavern")
    case .east:
        print("To the east is a blacksmith")
    case .west:
        print("To the west is the town square")
    }
}

lookToward(.south)

enum Item {
    case key
    case lockedDoor
    case openDoor
    case bluntKnife
    case sharpeningStrone
    case sharpKnife
}

func combine(_ firstItem: Item, with secondItem: Item) -> Item? { //swift는 switch문에서 결합 가능
    switch(firstItem, secondItem) {
    case (.key, .lockedDoor):
        print("You have unlocked the door!")
        return .openDoor
    case (.bluntKnife, .sharpeningStrone):
        print("Your knife is now sharp")
        return .sharpKnife
    default:
        print("\(firstItem) and \(secondItem) cannot be combined")
        return nil
    }
}

let door = combine(.key, with: .lockedDoor)
let oilAndWather = combine(.bluntKnife, with: .lockedDoor)
