func fullName(givenName: String, middleName: String = "Unknown", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}


let myFullName1 = fullName(givenName: "Jin", middleName: "J", familyName: "Park")
let myFullName2 = fullName(givenName: "Jin", familyName: "Park")

print(myFullName1)
print(myFullName2)
