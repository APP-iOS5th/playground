

/// 식사 준비 과정의 단계를 식사 상태로 정의.
enum MealState {
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}

/// 오류를 정의하는 Swift의 프로토콜 지향 접근 방식을 따라 오류를 정의
enum MealError: Error {
    case canOnlyMoveToAppropriateState
}

/// 식사를 준비하는 과정을 통해 식사의 상태를 추적하는 객체를 생성.
class Meal {
    // 상태 변경은 외부에 공개하고 싶지 않아! -> private
    private(set) var state: MealState = .initial
    
    /// 상태 변경을 위한 함수 생성, 상태 전환에 오류가 발생하면 오류 발생
    /// - Parameter newState: 새로운 식사 준비 단계 (새로운 상태)
    func change(to newState: MealState) throws {
        switch (state, newState) {
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

// do 블록 내에서 오류를 발생기키는 메소드를 실행하고, 발생한 오류를 catch.
do {
    try dinner.change(to: .buyIngredients)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .serve)
    try dinner.change(to: .plateUp)
    print("Dinner is served!")
} catch let error {
    print(error)
}

// 위 코드와 아래 코드는 같은 방식이지만 표현만 다르게 해본다.
// 위 코드는 change라는 함수를 switch문으로 표현해서 사용한 것이고 아래 코드는 각각을 함수로 표현해서 사용한 것이다.

do {
    try dinner.buyIngredients()
    try dinner.prepareIngredients()
    try dinner.cook()
    try dinner.serve()
    try dinner.plateUp()
    print("Dinner is served!")
} catch let error {
    print(error)
}
