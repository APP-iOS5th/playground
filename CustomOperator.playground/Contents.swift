import UIKit

//MARK: - Custom Operator

//Tasks.txt파일 생성 - touch Tasks.txt
//echo "Hello" >> Tasks.txt      -> Hello를 Tasks.txt에 넣어줌.
//위의 내용을 swift로 만듬. ">>>"

//인픽스 연산자 선언
infix operator >>>

//문자열에 대한 연산자 정의
func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    return combined
}

//문자열 배열에 대한 연산자 정의
func >>> (lhs: String, rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(lhs)
    return combined
}

//재네릭을 이용한 연산자 재정의
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

//맞춤 연산자 사용 예시
let appendedString = "Two" >>> "One" //OneTwo
let appendedIntToArray = 3 >>> [1, 2]

//맞춤 타입에 대한 연산자 구현
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
    } }
extension TaskList {
    static func >>> (lhs: Task, rhs: TaskList) {
        rhs.append(task: lhs)
    }
}
