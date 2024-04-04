import UIKit

infix operator >>>

func >>> <Element>(lhs: Element, rhs: [Element]) -> [Element] {
    var combined: [Element] = rhs
    combined.append(lhs)
    
    return combined
}

func >>> <Element>(lhs: [Element], rhs: [Element]) -> [Element] {
    var combined: [Element] = rhs
    combined.append(contentsOf: lhs)
    
    return combined
}

let appendedString = "Two" >>> ["One"]
print(appendedString)

let appendedString2 = ["One", "Two"] >>> ["Three", "Four"]
print(appendedString2)
