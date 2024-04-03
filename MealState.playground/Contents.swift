enum MealState {
    case initial
    case buyIngregients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}

enum MealError: Error {
    case canOnlyMoveToAppropriateSate
}

class Meal {
    private(set) var state: MealState = .initial
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngregients),
            (.buyIngregients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateSate
        }
    }
    
    func buyIngredients() throws {
        try change(to: .buyIngregients)
    }
    
    func perpareIngredients() throws {
        try change(to: .prepareIngredients)
    }
    
    func cook() throws {
        try change(to: .cook)
    }
    
    func plateUp() throws {
        try change(to: .plateUp)
    }
    
    func serve() throws {
        try change(to: .serve)
    }
}

let dinner = Meal()

do {
    try dinner.change(to: .buyIngregients)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .plateUp)
    try dinner.change(to: .serve)
    print("Dinner is served!")
} catch let error {
    print(error)
}
