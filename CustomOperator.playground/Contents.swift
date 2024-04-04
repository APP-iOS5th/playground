
/**  사용자 정의 연산자 만들기  **/

///infix: 새로운 "추가" 연산자 선언.
infix operator >>>

/// 두 문자열에 대해 >>> 연산자를 사용할 떄의 동장을 정의.
/// - Parameters:
///   - lhs(left hand side): 추가할 문자.
///   - rhs(right hand side): 기존의 문자.
/// - Returns: rhs에 lhs를 추가한 문자를 출력.
func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    return combined
}

/// 문자를 문자열 배열에 추가할 때 >>> 연산자의 동작을 정의.
/// - Parameters:
///   - lhs: 추가할 문자.
///   - rhs: 기존의 문자열 배열.
/// - Returns: rhs에 lhs를 추가한 문자열 배열을 출력.
func >>> (lhs: String, rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(lhs)
    return combined
}

/// 문자열 배열을 문자열 배열에 추가할 때 >>> 연산자의 동작을 정의.
/// - Parameters:
///   - lhs: 추가할 문자열 배열.
///   - rhs: 기존의 문자열 배열.
/// - Returns: rhs에 lhs를 추가한 문자열 배열을 출력.
func >>> (lhs: [String], rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}


let appendedString = "Two" >>> "One"
print(appendedString)

let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendedString3)
