import UIKit


enum ComparisonResult: Int {
    case orderedAscending // 0
    case orderedSame // 1
    case orderedDescending // 2
}


enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfesstional: Bool {
        return self == Title.dr || self == Title.prof
    }
}

let title1 = Title.mr

print(title1.isProfesstional) // false

