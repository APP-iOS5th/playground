import UIKit

// 열거형
enum ComparisionResult: Int {
    case orderedAscending // 0
    case orderedSome // 1
    case orderDescendin // 2
    // ... 3, 4, 5
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    // () -> 이게 빠지면 29line의 isProfessional()의 ()도 빠진다. (빠진게 더 낫다고 함.)
    func isProfessional() -> Bool {
        return self == Title.dr || self == Title.prof
    }
}

// 로직을 이해하기 쉽고 간결하다는 장점이 있다.
let title1 = Title.mr

print(title1.isProfessional())
