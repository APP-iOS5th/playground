import UIKit

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil

var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3
print(numberOfFingersHeldUpByFinn ?? 0)

func fullName(givenName: String,
              middleName: String,
              familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}
fullName(givenName: "충", middleName: "현", familyName: "이")

let myFullName = fullName(givenName: "이", middleName: "충", familyName: "현")
print(myFullName)

func combine(_ givenName: String, _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}
func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}
let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5, 10)
print(combinedString) // Finnley Moon
print(combinedInt) // 15
