
infix operator >>>



func >>> <Element> (lhs:Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element> (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    // 두개 다 배열일경우 contentsOf 배열을 풀어서 넣어주는 역할
    combined.append(contentsOf: lhs)
    return combined
}



let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three"] >>> ["Four"]
print(appendedString3)

struct Task {
    let name: String
}

// CustomStringConvertible 문자열 타입을 이쁘게 알려주는 프로토콜 -> description 필수값으로 들어가야함
class TaskList: CustomStringConvertible {
    private var tasks: [Task] = []
    func append(task: Task) {
        tasks.append(task)
    }
    var description: String {
        return tasks.map { $0.name }.joined(separator: "\n")
    }
}

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
