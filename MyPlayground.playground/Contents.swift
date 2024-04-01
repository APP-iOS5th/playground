enum ComparisonResult: Int{
    case orderedAscending
    case orderedSame
    case orderedDescending
}


enum Title: String{
    case mr = "Mr"
    case mrs = "MRS"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    func isProfessional() -> Bool{
        return self == Title.mr || self == Title.prof
    }
}

let title1 = Title.mr

print(title1.isProfessional())
