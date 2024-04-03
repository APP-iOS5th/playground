
enum MealState {
    case initial
    case buyIngregients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}
enum MealError: Error {
    case canOnlyMoveToApproprieteSate
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
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
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case(.initial, .buyIngregients),
            (.buyIngregients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToApproprieteSate
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

do {
    try dinner.buyIngredients()
    try dinner.prepareIngredients()
    try dinner.cook()
    try dinner.plateUp()
    try dinner.serve()
    print("Dinner is served!")
} catch MealError.canOnlyMoveToApproprieteSate {
    print("It's not possible to move to this state")
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch{
    print("Some other error: \(error)")
}
