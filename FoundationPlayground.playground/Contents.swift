import Foundation

func howLongUntilBirthday() -> String {
    let calendar = Calendar.current
    let timeZone = TimeZone.current
    
    let now = Date()
    let yearOfNextBirthday = calendar.component(.year, from: now)
    
    var component = DateComponents(calendar: calendar,
                                   timeZone: timeZone,
                                   year: yearOfNextBirthday,
                                   month: 2,
                                   day: 20,
                                   hour:0,
                                   minute:0,
                                   second:0)
    
    var birthday = component.date!
    if birthday < now {
        component.year = yearOfNextBirthday + 1
        birthday = component.date!
    }
    
    let componentFormatter = DateComponentsFormatter()
    componentFormatter.unitsStyle = .full
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]
    
    return componentFormatter.string(from: now, to: birthday)!
    
}
// 몇달 며칠 몇시간 남았는지
let timeUntilBirthday = howLongUntilBirthday()
print("Time until Birthday: \(timeUntilBirthday)")
