
enum MealState {
    case initial
    case buyIngregients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}
enum MealError: Error{
    case canOnlyMoveToAppropriateState
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    private(set) var state: MealState = .initial //상태변경을 외부에 공개하고 싶지 않으면 private(set) 클래스 내부에서만 사용
    private(set) var saltAdded = 0
    
    func addSalt() throws { //Void 생략
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        }
        else if case .initial = state, case .buyIngregients = state { //if case는 if let 생각하면됨
            throw MealError.wrongStateToAddSalt
        }
        else {
            saltAdded = saltAdded + 1
        }
    }
    
    func change(to newState: MealState) throws {
        switch (state, newState){ //state:원래 상태, newState: 다음 상태를 나타냄 여기 구문에서
        case (.initial, .buyIngregients),(.buyIngregients, .prepareIngredients),(.prepareIngredients, .cook),
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
}

let dinner = Meal()

/*
 do 구문안에 있는거 안전하게 지켜줌
 */
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
} catch { //let error 생략함
    print("Some other error: \(error)")
}
