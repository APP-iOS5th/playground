import UIKit

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
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    private(set) var state: MealState = .initial
    private(set) var saltAdd: Int = 0
    
    func addSalt() throws {
        if saltAdd >= 5 {
            throw MealError.tooMuchSalt
        } else if case self.state = .initial, case self.state = .buyIngredients {
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdd += 1
        }
    }
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
            // 순서대로 들어올 경우 나열
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
    
    func buyIngredients() throws {
        try change(to: .buyIngredients)
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
} catch MealError.canOnlyMoveToAppropriateState {
    print("It's not possible to move to this state")
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch MealError.wrongStateToAddSalt {
    print("Can't add salt at this stage")
} catch {
    print("Some other error: \(error)")
}
