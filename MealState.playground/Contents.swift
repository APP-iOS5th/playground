

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
