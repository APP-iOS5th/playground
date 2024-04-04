<<<<<<< HEAD
enum MealState {
    case initial
    case buyIngredients
=======

enum MealState {
    case initial
    case buyIngregients
>>>>>>> main
    case prepareIngredients
    case cook
    case plateUp
    case serve
}

enum MealError: Error {
<<<<<<< HEAD
    case canOnlyMoveToAppropriateState
=======
    case canOnlyMoveToAppropriateSate
>>>>>>> main
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    private(set) var state: MealState = .initial
    
    private(set) var saltAdded = 0
    
<<<<<<< HEAD
    func addSalt() throws {
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case .buyIngredients = state {
=======
    func addSalt() throws -> Void {
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case .buyIngregients = state {
>>>>>>> main
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdded = saltAdded + 1
        }
    }
<<<<<<< HEAD
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
=======
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngregients),
            (.buyIngregients, .prepareIngredients),
>>>>>>> main
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
<<<<<<< HEAD
            throw MealError.canOnlyMoveToAppropriateState
=======
            throw MealError.canOnlyMoveToAppropriateSate
>>>>>>> main
        }
    }
    
    func buyIngredients() throws {
<<<<<<< HEAD
        try change(to: .buyIngredients)
=======
        try change(to: .buyIngregients)
>>>>>>> main
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
<<<<<<< HEAD
    
=======

>>>>>>> main
}

let dinner = Meal()

do {
    try dinner.buyIngredients()
    try dinner.prepareIngredients()
    try dinner.cook()
    try dinner.plateUp()
    try dinner.serve()
<<<<<<< HEAD
    
    print("Dinner is served!")
} catch MealError.canOnlyMoveToAppropriateState {
    print("It's not possible to move to this state.")
=======
    print("Dinner is served!")
} catch MealError.canOnlyMoveToAppropriateSate  {
    print("It's not possible to move to this state")
>>>>>>> main
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch MealError.wrongStateToAddSalt {
    print("Can't add salt at this stage")
<<<<<<< HEAD
//} catch let error {
} catch {
    print("Some other error: \(error)")
}
=======
} catch {
    print("Some other error: \(error)")
}

>>>>>>> main
