enum CompassPoint {
    case north
    case south
    case east
    case west
}

func lookTowards(_ direction: CompassPoint) {
    switch direction {
    case .north:
        print("To the north lies a winding road")
    case .south:
        print("남쪽")
    case .east:
        print("east")
    case .west:
        print("west")
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

func combine(_ firstItem: Item, with secondItem: Item) -> Item? {
    switch(firstItem, secondItem) {
    case (.key, .lockedDoor):
        print("You have unlocked the door!")
        return .openDoor
    case (.bluntKnife, .sharpeningStone):
        print("Your knife is not sharp")
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

func say(_ textToSay: String, to character: Character? = nil) {
    switch(textToSay, character) {
    case ("abracadabra", .wizard?):
        print("The wizard says, \"Hey, that's my line!\"")
    case ("Pour me a drink", .bartender?):
        print("The bartender pours you a drink")
    case ("Can I have some of your gold?", .dragon?):
        print("The dragon burns you to death with his fiery breath")
    case (let textSaid, nil):
        print("You say \"\(textSaid)\", to no-one.")
    case (_, let anyCharacter?):
        print("The \(anyCharacter) looks at you, blankly")
    }
}

say("Is anybody there?")
say("Pour me a drink", to: .bartender)
say("Can I open a tab?", to: .bartender)
say(<#T##textToSay: String##String#>)
