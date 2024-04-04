
infix operator >>>

<<<<<<< HEAD
//func >>> (lhs: String, rhs: String) -> String {
//    var combined = rhs
//    combined.append(lhs)
//    return combined
//}

func >>> <Element>(lhs: Element, rhs: [Element]) -> [Element] {
=======
func >>> <Element>(lhs: Element, rhs: Array<Element>) -> Array<Element> {
>>>>>>> main
    var combined = rhs
    combined.append(lhs)
    return combined
}

<<<<<<< HEAD
//func >>> (lhs: [String], rhs: [String]) -> [String] {
//    var combined = rhs
//    combined.append(contentsOf: lhs)
//    return combined
//}
=======
>>>>>>> main
func >>> <Element>(lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}

<<<<<<< HEAD
//let appendedString = "Two" >>> "One"
//print(appendedString)
=======
>>>>>>> main

let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

<<<<<<< HEAD
let appendedString3 = ["Two", "Three"] >>> ["One", "Zero"]
print(appendedString3)

let appendedString4 = [2, "Three"] >>> ["One", 0]
print(appendedString4)

=======
let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendedString3)

>>>>>>> main
struct Task {
    let name: String
}

<<<<<<< HEAD
// CustomStringConvertible 에 description 이 정의되어 있고 출력시 description 의 내용을 출력
// CustomStringConvertible 이 없으면 클래스 네임 TaskList를 출력할 것이다
=======
>>>>>>> main
class TaskList: CustomStringConvertible {
    private var tasks: [Task] = []
    func append(task: Task) {
        tasks.append(task)
    }
    var description: String {
        return tasks.map { $0.name }.joined(separator: "\n")
    }
}

<<<<<<< HEAD
// Task 가 배열이 아니므로 custom operator 를 사용하기 위해 extension 사용
extension TaskList {
    static func >>> (lhs: Task, rhs:TaskList) {
=======
extension TaskList {
    static func >>> (lhs: Task, rhs: TaskList) {
>>>>>>> main
        rhs.append(task: lhs)
    }
}

let shoppingList = TaskList()
<<<<<<< HEAD
let task1 = Task(name: "get milk")
//shoppingList.append(task: task1)
task1 >>> shoppingList
let task2 = Task(name: "get teabags")
//shoppingList.append(task: task2)
task2 >>> shoppingList
=======

let task1 = Task(name: "get milk")
task1 >>> shoppingList

let task2 = Task(name: "get teabags")
shoppingList.append(task: task2)
>>>>>>> main
print(shoppingList)
