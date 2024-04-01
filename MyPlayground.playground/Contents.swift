var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil // 컴파일 오류 발생

var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "")


let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)

