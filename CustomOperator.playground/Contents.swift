// 사용자 정의 연산자
//prefix operator >>>
infix operator >>>
//postfix operator >>>

func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    return combined
}

// 함수 overloading
func >>> (lhs: String, rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> (lhs: [String], rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(contentsOf: lhs) // 배열에서 하나씩 풀어서 붙임
    return combined
}

// generic
func >>> <Element>(lhs: Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element>(lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(contentsOf: lhs) // 배열에서 하나씩 풀어서 붙임
    return combined
}


let appendedString = "Two" >>> "One" // 좌항을 우항 다음에 붙임
print(appendedString)

let appendedString2 = "Two" >>> ["One"] // ["One", "Two"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"] // ["One", "Two", "Three", "Four"]
print(appendedString3)


struct Task {
    let name: String
}

class TaskList: CustomStringConvertible {
    private var tasks: [Task] = []
    
    func append(task: Task) {
        tasks.append(task)
    }
    
    var description: String {
        return tasks.map { $0.name }.joined(separator: "\n")
    }
}

// 연산자 추가 정의(함수 overloading)
extension TaskList {
    
    static func >>> (lhs: Task, rhs: TaskList) {
        rhs.append(task: lhs)
    }
}

let shoppingList = TaskList()

let task1 = Task(name: "get milk")
task1 >>> shoppingList

let task2 = Task(name: "get teabags")
shoppingList.append(task: task2)
