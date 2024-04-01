
func fullName(givenName: String, middleName: String = "Default", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Inho", familyName: "Lee");

print(myFullName)
