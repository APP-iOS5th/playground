enum CompassPoint {
    case north
    case south
    case east
    case west
}

func lookTowrd(_ direction: CompassPoint) {
    switch direction {
    case .north:
        print("To the north lies a winding road")
    case .south:
        print("To the south is the Prancing Pony tavern")
    case .east:
        print("To the east is a blacksmith")
    case .west:
        print("To the west is the town square")
    }
}


lookTowrd(.south)
