
infix operator >>>

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


let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendedString3)
