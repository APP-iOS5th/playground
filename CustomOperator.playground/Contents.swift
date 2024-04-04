infix operator >>>
//prefix operator
//postfix operator

func >>> <Element>(lhs: Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element> (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}



let appendString2 = "Two" >>> ["One"]
print(appendString2)

let appendString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendString3)


struct Task {
    let name: String
}

class TaskList: CustomStringConvertible {
    private var tasks: [Task] = []
    func append(task: Task) {
        tasks.append(task)
    }
    var description: String{
        return tasks.map { $0.name}.joined(separator: "\n")
    }
        
}

extension TaskList {
    static func >>> (lhs: Task, rhs: TaskList){
        rhs.append(task: lhs)
    }
}


let shoppingList = TaskList()
let task1 = Task(name: "get milk")
shoppingList.append(task: task1)
let task2 = Task(name: "get teabags")
shoppingList.append(task: task2)


print(shoppingList)

