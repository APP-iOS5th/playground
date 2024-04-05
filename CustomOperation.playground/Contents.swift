

// //
infix operator >>>

infix operator <<<


func >>> <T>(lhs: T, rhs: Array<T>) -> Array<T> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <T>(lhs: [T], rhs: [T]) -> [T] {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}


let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendedString3)


//
//let appenedString1 = "Two" >>> "One"
//
//let appenedString2 = "Two" >>> ["One"]

let appenedString3 = ["Three", "Four"] >>> [""]



// --

struct Task {
    let name: String
}

class TaskList: CustomStringConvertible {
    private var tasks: [Task] = []
    func append(task: Task) {
        tasks.append(task)
    }
    
    // CustomStringConvertible
    var description: String {
        return tasks.map { $0.name }.joined(separator: " -- ")
    }
}

extension TaskList {
    static func >>> (lhs: Task, rhs: TaskList) {
        rhs.append(task: lhs)
    }
    static func <<< (lhs: TaskList, rhs: Task) {
        lhs.append(task: rhs)
    }
}

let shoppingList = TaskList()

let task1 = Task(name: "get milk")
let task2 = Task(name: "get teabags")

shoppingList

task1 >>> shoppingList
shoppingList

shoppingList <<< task2
shoppingList

