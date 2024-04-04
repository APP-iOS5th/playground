import UIKit

func howLongUntilChristmas() -> String {
    let calendar = Calendar.current
    let timeZone = TimeZone.current
    
    let now = Date()
    print(now)
    let yearOfNExtChristmas = calendar.component(.year, from: now)
    print(yearOfNExtChristmas)
    
    var component = DateComponents(calendar: calendar, timeZone: timeZone, year: yearOfNExtChristmas, month: 12, day: 25, hour: 0, minute: 0, second: 0)
    
    var christmas = component.date!
    print(christmas)
    
    if christmas < now {
        component.year = yearOfNExtChristmas + 1
        christmas = component.date!
    }
    
    let componentFormatter = DateComponentsFormatter()
    componentFormatter.unitsStyle = .full
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]
    
    return componentFormatter.string(from: now, to: christmas)!
}

let timeUntilChristmas = howLongUntilChristmas()
print("Time until Christmas: \(timeUntilChristmas)")
