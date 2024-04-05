enum CompassPoint {
    case north
    case south
    case east
    case west
}

func lockTowards(_ direction: CompassPoint) {
    switch direction {
    case .north:
        print("north~~")
    case .south:
        print("south~~")
    case .east:
        print("east~~")
    case .west:
        print("west~~")
    }
    
}

lockTowards(.east)

enum Item {
    case key
    case lockedDoor
    case openDoor
    case bluntKnife
    case sharpenigStone
    case shapKinfe
}

func combine(_ firstItem: Item, with secondItem: Item) -> Item? {
    switch (firstItem, secondItem) {
    case (.key, .lockedDoor):
        print("Door!")
        return .openDoor
    case(.bluntKnife, .sharpenigStone):
        print("kife, stone!")
        return .shapKinfe
    default:
        print("\(firstItem) and \(secondItem) cannot be combined")
        return nil
    }
}

let door = combine(.key, with: .lockedDoor)
let oilAndWater = combine(.bluntKnife, with: .lockedDoor)

enum Character: String {
    case wizrd
    case bartender
    case dragon
}

func say(_ textToSay: String, to charcter: Character? = nil) {
    switch(textToSay, charcter) {
    case ("abracadabra", .wizrd?):
        print("The wi \" Line!")
    case("Pour me a drink", .bartender?):
        print("the batender you a drink!")
    case("Can I hav some of your gold?", .dragon?):
        print("Draogn!")
    case(let textSaid, nil):
        print("you say \(textSaid), to no-one")
    case(_, let anyChracter?):
        print("the \(anyChracter) looks at you, blankly")
    }
}

say("Pour me a drink", to:.bartender)
say("Blankey Text", to:.dragon)
say("nil!")
say("anySAY!!!", to: .wizrd)










