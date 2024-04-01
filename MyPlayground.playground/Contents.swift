import UIKit

func fullName(_ givenName: String, _ middleName: String, _ familyName: String) -> String {
    let fullName = "\(givenName) \(middleName) \(familyName)"
    
    return fullName
}

print(fullName("조", "성", "빈"))
