
// operator -> 기존의 연산자 기호(ex: '>>>') 를 함수명으로 사용할 수 있도록 재정의 해줌.
// infix -> 중위 -> ㅇㅇ >>> ㅇㅇ
// prefix -> 전위 -> >>> ㅇㅇ ㅇㅇ
// postifx -> 후위 -> ㅇㅇ ㅇㅇ >>>
infix operator >>>

func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    
    return combined
}

//이미 존재하는 >>> 함수에 오버로딩함.
//<Elment> -> 제네럴 타입 지정(제네릭)
func >>> <Elment> (lhs: Elment, rhs: Array<Elment>) -> Array<Elment> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> (lhs: [String], rhs: [String]) -> String {
    var rhs = rhs
    var combined = ""
    rhs.append(contentsOf: lhs) // contentsOf -> 배열끼리 합침.
    for i in rhs {
        combined += String(i)
    }
    return combined
}

let appendedString = "Two" >>> "One"
print(appendedString)

let appendedAryString = "Three" >>> ["One", "Two"]
print(appendedAryString)

let appendedAryAry = ["Three", "Four"] >>> ["One", "Two"]
print(appendedAryAry)



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
