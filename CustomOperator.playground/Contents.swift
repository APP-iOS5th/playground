infix operator >>>
//prefix operator
//postfix operator

func >>> <Element>(lhs: Element, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> <Element> (lhs: Array<Element>, rhs: Array<Element>) -> Array<Element> {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}



let appendString2 = "Two" >>> ["One"]
print(appendString2)

let appendString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendString3)


