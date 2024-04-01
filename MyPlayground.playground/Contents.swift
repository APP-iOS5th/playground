import UIKit

// 기본 변수
var dayOfTheWeek = "Tuesday"
// 기본타입이 String?이 아닌 String으로 선언되어서 nil할당 불가
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wedenesday"
//dayOfTheWeek = nil // 컴파일 오류 발생 (옵셔널로 선언되지 않아서)

var numberOfFingerHeldByFinn: Int? // 값이 있을수도 없을수도 있다.
numberOfFingerHeldByFinn = nil
numberOfFingerHeldByFinn = 3

print(numberOfFingerHeldByFinn ?? "Unknown")

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingerHeldByFinn!
// 위험할 수 있음❗️
print(lastNumberOfFingersHeldUpByFinn)
