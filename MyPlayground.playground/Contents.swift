import UIKit

//Chapter6
//enum(열거형)
enum ComprisonResult: Int{ //아무것도 주지않았을때 0부터 시작
    case ordersAscending //0
    case orderdSame //1
    case orderDescending //2
} //...3, 4, 5,

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    func isProfessional() -> Bool{
        return self == Title.dr || self == Title.prof
    }
    /*
    var isProfessional: Bool{
        return self == Title.dr || self == Title.prof
    }
     */
}

let title1 = Title.mr

print(title1.isProfessional())
//print(title1.isProfessional)

