// 최광우꺼
// 2024-04-01

import UIKit

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "KR"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String {
        return "\(self.givenName) \(self.middleName) \(self.familyName)"
    }
    
    func changeResidence(residence: String) {
        self.countryOfResidence = residence
    }
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
}

let person = Person(givenName: "최", middleName: "미친소", familyName: "광우")
print(person.displayString)
person.changeResidence(residence: "US")
print(person.displayString)
