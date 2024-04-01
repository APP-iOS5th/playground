import UIKit

// _ : 와일드카드 패턴 (변수명, 레이블을 제외하고 사용할 수 있도록 해 줌.)
// 매개변수 오버로드
func combine (_ giveName: String, _ familyName: String) -> String {
    return "\(giveName) \(familyName)"
}

func combine (_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

// 파라미터 오버로딩
// 와일드카드 패턴 혹은 오버로딩을 안 한다면: 
// let comebinedString = combine(givenName: "Finnley", familyName: "Moon")
let comebinedString = combine("Finnley", "Moon")
let comebinedInt = combine(5, 10)

print(comebinedString)
print(comebinedInt)
