

infix operator >>>

func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    return combined
    
}

func >>> <Element>(lhs: Element, rhs: [Element]) -> [Element] {
    var combined = rhs
    combined.append(lhs)
    return combined
    
}

func >>> <Element>(lhs: [Element], rhs: [Element]) -> [Element] {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}

let appendString = "Two" >>> "One"
print(appendString)

let appendString2 = "Two" >>> ["One"]
print(appendString2)

let appendString3 = ["Three","Four"] >>> ["One","Two"]
print(appendString3)


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

let shoppingList = TaskList()
let task1 = Task(name: "get milk")
shoppingList.append(task: task1)

let task2 = Task(name: "get teabags")
shoppingList.append(task: task2)
