
infix operator >>>

func >>> (lhs: String, rhs: String) -> String{
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

let appendedString = "Two" >>> "ONE"
print(appendedString)

let appendedString2 = "Two" >>> ["One"]
print(appendedString2)

let appendedString3 = ["Three", "Four"] >>> ["One", "Two"]
print(appendedString3)
 
