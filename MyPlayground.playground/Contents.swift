
enum ComparisonResult: Int {
    case orderedAscending
    case orderedSame
    case orderedDescending
}

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case master = "Master"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfessional: Bool {
        return self == Title.mr || self == Title.prof
    }
}

let title = Title.mr
