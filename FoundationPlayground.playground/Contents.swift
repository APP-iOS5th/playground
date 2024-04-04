import Foundation

func howLongUntilChristmas() -> String {
    let calendar = Calendar.current
    let timeZone = TimeZone.current
    
    let now = Date()
    let yearOfNextChirstmas = calendar.component(.year, from: now)
    
    var component = DateComponents(calendar: calendar,
                                   timeZone: timeZone,
                                   year: yearOfNextChirstmas,
                                   month: 12,
                                   day: 25,
                                   hour: 0,
                                   minute: 0,
                                   second: 0)
    var christmas = component.date!
    if christmas < now {
        component.year = yearOfNextChirstmas + 1
    }
    
    let componentFormatter = DateComponentsFormatter()
    componentFormatter.unitsStyle = .full
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]
    
    return componentFormatter.string(from: now, to: christmas)!
}

let timeUntilChristmas = howLongUntilChristmas()
print("Time until Christmas: \(timeUntilChristmas)")
