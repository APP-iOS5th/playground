
// >> -> Shift 연산
// operator -> 기존의 연산자 기호(ex: '>>>') 를 함수명으로 사용할 수 있도록 재정의 해줌.
// infix -> 이항 연산자
infix operator >>>

func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    
    return combined
}

//이미 존재하는 >>> 함수에 오버로딩함.
//>>> 오버로딩 예제 #1
func >>> (lhs: String, rhs: [String]) -> String {
    var rhs = rhs
    var combined = ""
    rhs.append(lhs)
    for i in rhs {
        combined += String(i)
    }
    return combined
}

//>>> 오버로딩 예제 #2
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
