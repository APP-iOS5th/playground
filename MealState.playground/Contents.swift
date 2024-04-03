

enum MealState {
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}

enum MealError: Error {
    case canOnlyMoveToAppropriateState
}

class Meal {
    private(set) var state: MealState = .initial
    
    func chnage(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateState
        }
    }
}



let dinner = Meal()

do {
    try dinner.chnage(to: .buyIngredients)
    try dinner.chnage(to: .prepareIngredients)
    try dinner.chnage(to: .cook)
    try dinner.chnage(to: .plateUp)
    try dinner.chnage(to: .serve)
    print("Dinner is Served!")
} catch let error {
    print(error)
}
