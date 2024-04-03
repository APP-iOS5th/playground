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
    
    private(set) var saltAdded = 0
    
    func addSalt() throws -> Void{
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case.buyIngredients = state {
            throw MealError.wrongStateToAddSalt // 소금이 준비되기 전에도 소금을 넣으면 에러 발생
        } else {
            saltAdded = saltAdded + 1
        }
    }
    func change(to newState: MealState) throws {
        switch (state, newState) {
        // 순서 정의
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

// change function과 동일
//    func buyIngredients() throws {
//        try change(to: .buyIngredients)
//    }
//    
//    func prepareIngredients() throws {
//        try change(to: .prepareIngredients)
//    }
//     
//    func cook() throws {
//        try change(to: .cook)
//    }
//     
//    func plateUp() throws {
//        try change(to: .plateUp)
//    }
//     
//    func serve() throws {
//        try change(to: .serve)
//    }
}

let dinner = Meal()

do {
    try dinner.change(to: .buyIngredients)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .plateUp)
    try dinner.change(to: .serve)
    print("Dinner is served!")
} catch MealError.canOnlyMoveToAppropriateState  {
    print("It's not possible to move to this state")
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch MealError.wrongStateToAddSalt {
    print("Can't add salt at this stage")
} catch let error {
    print("Some other error: \(error)")
}

// 주석 처리한 function 사용 시 코드
//let dinner = Meal()
//
//do {
//    try dinner.buyIngredients()
//    try dinner.prepareIngredients()
//    try dinner.cook()
//    try dinner.plateUp()
//    try dinner.serve()
//    print("Dinner is served!")
//} catch let error {
//    (error)
//}
