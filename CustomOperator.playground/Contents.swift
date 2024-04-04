
infix operator >>>

func >>> (lhs: String, rhs: String) -> String {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> (lhs: String, rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(lhs)
    return combined
}

func >>> (lhs: [String], rhs: [String]) -> [String] {
    var combined = rhs
    combined.append(contentsOf: lhs)
    return combined
}

let appendedString = "Two" >>> "One"
print(appendedString)

let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Two", "Three"] >>> ["One", "Zero"]
print(appendedString3)
