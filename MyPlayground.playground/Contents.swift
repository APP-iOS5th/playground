import UIKit
//chapter2
var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wendesday"
//dayOfTheWeek = nil // swift에서는 옵셔널을 선언하지 않으면 null값을 못넣어줌

var numberOfFingersHeldUpByFinn: Int? // ?: 옵셔널 선언 , null값을 넣을 수 있음(옵셔널을 선언해서), 한번 옵셔널은 영원히 옵셔널일 경우가 큼
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn ?? "" )// Expression implicitly coerced from 'Int?' to 'Any' 옵셔널일수도 있다라고 경고를줌 , ?? "": (null일경우 "" 출력, 기본값을 설정해줌으로써 null일 가능성을 제거해줘서)
let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! // !(강제추출): 언래핑, 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)


