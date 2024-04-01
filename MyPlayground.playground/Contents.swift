
enum ComparisonResult: Int {
    case orderedAscending
    case orderedSame
    case orderedDescending
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfessional: Bool {
        return self == Title.dr || self == Title.prof
    }
    
//    func isProfessional() -> Bool {
//        return self == Title.dr || self == Title.prof
//    }
}

let title = Title.mr

print(title.isProfessional)

