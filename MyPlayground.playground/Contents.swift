func fullName (givenName: String, middleName: String = "Unknown", familyname: String) -> String {
    return "\(givenName) \(middleName) \(familyname) ! "
}

let myFullName = fullName(givenName: "keith", middleName: "David", familyname: "Moon")
print(myFullName)
let myFullName2 = fullName(givenName: "keith", familyname: "Moon")
print(myFullName2)
