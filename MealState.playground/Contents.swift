enum MealState {
    case initial
    case buyIngregients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}

enum MealError: Error {
    case canOnlyMoveToAppropriateState
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    private(set) var state: MealState = .initial
    func change(to newState: MealState) throws {
        switch(state, newState) {
        case
            (.initial, .buyIngregients),
            (.buyIngregients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateState
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
    
    
    // //// //
    
    private(set) var saltAdded = 0
    func addSalt() throws {
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case .buyIngregients = state {
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdded += 1
        }
            
    }

}



let dinner = Meal()
//
//print("-=---")
//
//
//do {
//    try dinner.change(to: .buyIngregients)
//    try dinner.change(to: .prepareIngredients)
//    try dinner.change(to: .cook)
//    try dinner.change(to: .buyIngregients)
//    try dinner.change(to: .serve)
//    print("Dinner is served!")
//} catch let error {
//    print(error)
//}
//
//print("------")
//
//do {
//    try dinner.buyIngredients()
//    try dinner.prepareIngredients()
//    try dinner.cook()
//    try dinner.plateUp()
//    try dinner.serve()
//    print("Dinner is served!")
//} catch let error {
//    print(error)
//}

print("-----")
do {
    try dinner.buyIngredients()
    try dinner.prepareIngredients()
    try dinner.cook()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.addSalt()
    try dinner.plateUp()
    try dinner.serve()
    print("Dinner is served!")
} catch MealError.canOnlyMoveToAppropriateState {
    print("not move State")
} catch MealError.tooMuchSalt {
    print("too much salt")
} catch {
    print("some error : \(error)")
}






