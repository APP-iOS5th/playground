
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
        switch (state, newState){
        case (.initial, .buyIngregients),(.buyIngregients, .prepareIngredients),(.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateState
            
        }
    }
}

let dinner = Meal()

/*
 do 구문안에 있는거 안전하게 지켜줌
 */
do {
    try dinner.change(to: .buyIngregients)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .plateUp)
    try dinner.change(to: .serve)
    print("Dinner is served!")
    
    
}catch let error{
    print(error)
}
