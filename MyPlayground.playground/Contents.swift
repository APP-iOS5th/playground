import UIKit

func combine(_ givenName: String, _ familyNme: String) -> String{ //_을 사용하면 함수 레이블을 사용하자 않고 사용할수 있음
    return "\(givenName) \(familyNme)"
}
func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}
let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5,10)

print(combinedString)
print(combinedInt)
