
enum MealState {
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plateUp
    case serve
}


enum MealError: Error {
    case canOnlyMoveToAppropriateSate
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    private(set) var state: MealState = .initial
    
    private(set) var saltAdded = 0
    
    // throws 키워드는 함수의 반환 타입 앞에 위치하며, 함수가 성공적으로 완료될 수도 있지만, 실행 중에 문제가 발생하면 오류를 던져 호출 코드로 알릴 수 있음을 의미
    func addSalt() throws {
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if case .initial = state, case .buyIngredients = state {
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdded = saltAdded + 1
        }
    }
    
    // change(to:) 메서드는 식사 준비의 현재 상태를 새 상태로 변경하려고 시도할 때 호출됩니다.
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plateUp),
            (.plateUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateSate
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

// do-catch 구문은 오류 처리를 위해 사용되며, 프로그램에서 예외적인 상황이나 오류를 안전하게 처리할 수 있게 해줍니다. 이 구문을 사용하면, 오류를 던질 수 있는 코드 블록을 실행하고, 만약 오류가 발생하면 이를 잡아(catch) 처리할 수 있습니다.
do {
    try dinner.buyIngredients()
    try dinner.prepareIngredients()
    try dinner.change(to: .cook)
    try dinner.change(to: .plateUp)
    try dinner.change(to: .serve)
    // try는 오류를 던질 수 있는 함수나 메서드를 호출할 때 사용됩니다. try는 오류를 캐치하기 위해 do 블록 내에서 사용되며, 함수나 메서드가 오류를 던지면 실행은 즉시 catch 블록
    print("Dinner is served!")
    
 // 각 catch 블록은 특정 오류 패턴을 매칭하여 해당 오류가 발생했을 때 실행될 코드를 포함합니다. catch 뒤에는 오류 패턴을 명시할 수 있으며, 이를 통해 특정 오류를 처리하는 코드를 정의할 수 있습니다.
    // 모든 오류 타입을 처리하는 일반적인 catch 블록을 마지막에 배치하여, 처리되지 않은 모든 오류를 캡처할 수 있습니다.
} catch MealError.canOnlyMoveToAppropriateSate {
    print("It's not possible to move to this state")
} catch MealError.tooMuchSalt {
    print("Too much salt!")
} catch MealError.wrongStateToAddSalt {
    print("Can't add salt at this stage")
} catch {
    print("Some other error: \(error)")
}
