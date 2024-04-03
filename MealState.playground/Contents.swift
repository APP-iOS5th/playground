
enum MealState{
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plateup
    case serve
}
enum MealError: Error{
    case canOnlyMoveToAppropriateSate
}

class Meal{
    private(set) var state: MealState = .initial
    
    func change(to newState: MealState) throws{
        switch(state, newState){
        case(.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateup),
            (.plateup, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateSate
        }
    }
}
let dinner = Meal()

do {
    try dinner.change(to: .buyIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .plateup)
    try dinner.change(to: .serve)
    print("Dinner is well Served!")
    
}catch let error{
    print(error)
}


