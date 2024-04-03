// ✨ try, throw, do, catch ♥️ 로 오류 처리하기
// 오류를 처리하는데 있어 의도적이고 유연한 패턴을 제공
// 식사 준비 과정을 모델링하여 오류 처리를 살펴보자

// 🍽️ 식사 준비 과정의 단계를 식사 상태로 정의함
enum MealState {
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}

// 🫣 오류 정의하는 Swift의 프로토콜 지향 접근 방식을 따라 오류를 정의함
enum MealError: Error {
    case canOnlyMoveToAppropriateState
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    // 식사를 준비하는 과정을 통해 식사의 상태를 추적하는 객체 생성
    private(set) var state: MealState = .initial
    
    private(set) var saltAdded = 0
    
    func addSalt() throws {
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case .buyIngredients = state {
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdded = saltAdded + 1
        }
    }
    
    // 상태 변경을 위한 함수 생성, 상태 전환 오류 발생시 오류 발생시킴
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case(.initial, .buyIngredients),
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

// 예상한 오류 메시지를 우아하게 다루기 위해 do-catch 🎀
// do 블록 내에서 오류를 발생시키는 메소드 실행, 발생 오류를 catch함
let dinner = Meal()
do {
    // 보통 변수 이름과 함수 이름은 소문자로 시작한다
    try dinner.change(to: .buyIngredients)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .plateUp)
    try dinner.change(to: .serve)
    print("Dinner is served")
} catch MealError.canOnlyMoveToAppropriateState {
    // 식사 순서가 잘못되면 오류 메시지 출력 💌
    print("It's not possible to move to this state")
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch MealError.wrongStateToAddSalt {
    print("Can't add salt at this stage")
} catch {
    print("Some other error: \(error)")
}
