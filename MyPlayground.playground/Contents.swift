// 최광우꺼
// 2024-04-01

import UIKit

enum ComparisionResult: Int {
    case orderedAscending   // 0
    case orderedSame        // 1
    case orderedDescending  // 2
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfessor: Bool {
        return self == Title.dr || self == Title.prof
    }
}

// Title을 생성하면서 title은 Title의 prof를 가지게된다
let title1 = Title.prof

// 그래서 isProfessor의 self는 prof가 된다.
print(title1.isProfessor)
