// 최광우꺼
// 2024-04-01

import UIKit

func fullName(givenName: String, middleName: String = "initial middleName", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName: String = fullName(givenName: "KwangWoo", familyName: "Choi")
print(myFullName)
