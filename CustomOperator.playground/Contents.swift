
infix operator >>> //>>>연산자를 새로 추가

func >>> <Element>(lhs: Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element>(lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(contentsOf: lhs) //배열인건 풀어서 추가해주는 append
    return combined
}

let appendString2 = "Two" >>> ["One"]
print(appendString2)

let appendString3 = ["Three","Four"] >>> ["One", "Two"]
print(appendString3)
