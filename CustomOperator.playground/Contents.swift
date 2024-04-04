
// 새로운 추가 연산자 선언
infix operator >>>

// 좌항 lhs, 우항 rhs
// >>> 라는 연산자 정의하기
//func >>> (lhs: String, rhs: String) -> String {
//    var combined = rhs
//    combined.append(lhs)
//    return combined
//}

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


//let appendedString = "Two" >>> "One"
//print(appendedString)

let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendedString3)


// 덮어쓰기 (오버라이딩)
// 다른 타입의 매개변수를 허용하게끔, 같은 이름의 함수에 다른 매개변수로 정의한 걸 추가하는 거 - 오버로딩
