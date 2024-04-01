import UIKit

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var contryOfResidence: String = "UK"
    
    init(givenName: String, middleName: String, familyName: String, contryOfResidence: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    func funllName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    var displayString: String {
        return "\(self.funllName()) - Location: \(self.contryOfResidence)"
    }
}

