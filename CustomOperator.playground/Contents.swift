import UIKit

infix operator >>>

func >>> <Element>(lhs: Element, rhs: [Element]) -> [Element] {
    var combined: [Element] = rhs
    combined.append(lhs)
    
    return combined
}

func >>> <Element>(lhs: [Element], rhs: [Element]) -> [Element] {
    var combined: [Element] = rhs
    combined.append(contentsOf: lhs)
    
    return combined
}

let appendedString = "Two" >>> ["One"]
//print(appendedString)

let appendedString2 = ["One", "Two"] >>> ["Three", "Four"]
//print(appendedString2)

struct Task {
    let name: String
}

class TaskList: CustomStringConvertible {
    private var tasks: [Task] = []
    
    func append(task: Task) {
        tasks.append(task)
    }
    
    var description: String {
        return tasks.map{ $0.name }.joined(separator: "\n")
    }
}

extension TaskList {
    static func >>> (lhs: Task, rhs: TaskList) {
        rhs.append(task: lhs)
    }
}

let shoppingList: TaskList = TaskList()
let task1: Task = Task(name: "get milk")
shoppingList.append(task: task1)
let task2: Task = Task(name: "get teabags")
shoppingList.append(task: task2)

print(shoppingList.description)

Task(name: "TEST") >>> shoppingList
print(shoppingList.description)
