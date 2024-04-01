import UIKit

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"

//dayOfTheWeek = nil //'nil' cannot be assigned to type 'String' (컴파일 오류 발생)

var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn)

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn!
print(lastNumberOfFingersHeldUpByFinn)
