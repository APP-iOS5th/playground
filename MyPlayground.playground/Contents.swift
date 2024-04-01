
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
}

enum ComparisonResult: Int {
    case orderedAscending
    case orderedSame
    case orderedDescending
}

let a = Title.dr

print(a.isProfessional)

print(ComparisonResult.orderedAscending.rawValue)
