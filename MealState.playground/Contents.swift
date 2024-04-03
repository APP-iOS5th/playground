
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
}

class Meal {
    private(set) var state: MealState = .initial //상태변경을 외부에 공개하고 싶지 않으면 private(set) 클래스 내부에서만 사용
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
    
    
} catch let error {
    print(error)
}
