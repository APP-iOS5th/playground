
infix operator >>>

func >>> <Element>(lhs: Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element>(lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}


let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
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
print(shoppingList)
