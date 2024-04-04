
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

let appendString =  "Two" >>> "One"
print(appendString)

let appendString2 = "Two" >>> ["One"]
print(appendString2)

let appendString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendString3)

