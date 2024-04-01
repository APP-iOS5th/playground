func fullName(givenName: String, middleName: String = "Unknown", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
print(myFullName)

