//func fullName(givenName: String, middleName: String = "Unknown", familyName: String) -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//}
//
//let myFullName = fullName(givenName: "Keith", familyName: "Moon");
//
//print(myFullName)


func combine(_ givenName: String, _ familyName: String) -> String { return "\(givenName) \(familyName)"}

func combine(_ integer1: Int, _ interger2: Int) -> Int { return integer1 + interger2}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5, 10)

print(combinedString)
print(combinedInt)
