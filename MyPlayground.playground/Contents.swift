func fullName(givenName: String, middleName: String, familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let mtFullName = fullName(givenName: "K", middleName: "L", familyName: "A")

print(mtFullName)
