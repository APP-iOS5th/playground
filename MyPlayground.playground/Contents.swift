import UIKit

//Chapter3
//함수 선언
func fullName(giveName: String, middleName: String = "Unkown", familyName: String) -> String{
    return "\(giveName) \(middleName) \(familyName) !"
}

let myFullName = fullName(giveName: "Keith", familyName: "Moon")
print(myFullName)

