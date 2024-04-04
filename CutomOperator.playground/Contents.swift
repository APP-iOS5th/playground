
infix operator >>>



func >>> <Element> (lhs:Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element> (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    // 두개 다 배열일경우 contentsOf 배열을 풀어서 넣어주는 역할
    combined.append(contentsOf: lhs)
    return combined
}



let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three"] >>> ["Four"]
print(appendedString3)

