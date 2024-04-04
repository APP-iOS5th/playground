// 사용자 정의 연산자
infix operator >>>

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

let appendedString = "Two" >>> "One" // 좌항을 우항 다음에 붙임
print(appendedString)

let appendedString2 = "Two" >>> ["One"] // ["One", "Two"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"] // ["One", "Two", "Three", "Four"]
print(appendedString3)
