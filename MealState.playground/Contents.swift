
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
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    //Meal 안에서만 수정 가능
    private(set) var state: MealState = .initial
    
    private(set) var saltAdded = 0
    
    func addSalt() throws {
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case .buyIngregients = state {
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdded = saltAdded + 1
        }
    }
    
    func change(to newState:MealState) throws {
        switch(state,newState) {
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
    
    func prepareIngredients() throws {
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

do{
    //    try dinner.change(to: .buyIngregients)
    try dinner.buyIngredients()
    //    try dinner.change(to: .prepareIngredients)
    try dinner.prepareIngredients()
    //    try dinner.change(to: .cook)
    try dinner.cook()
    //    try dinner.change(to: .plateUp)
    try dinner.plateUp()
    //    try dinner.change(to: .serve)
    try dinner.serve()
    print("Dinner is served!")
} catch MealError.canOnlyMoveToAppropriateSate {
    print("It's not possible to move to this state")
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch MealError.wrongStateToAddSalt {
    print("Can't add salt at this stage")
} catch {
    print("Some other error: \(error)")
}
