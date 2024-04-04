import Foundation

func howLongUntilChristmas() -> String {
    let calendar = Calendar.current //전역 프로퍼티
    let timeZone = TimeZone.current //우리가 사용하는 시간대 정보
    
    let now = Date() // 현재 시간을 가져옴
    let yearOfNextChristmas = calendar.component(.year, from: now) //현재시간을 기준으로 달력을 가져옴
    
    var  component = DateComponents(calendar: calendar,
                                    timeZone: timeZone,
                                    year: yearOfNextChristmas,
                                    month: 12,
                                    day:25,
                                    hour: 0,
                                    minute: 0,
                                    second: 0)
    var chirstmas = component.date!
    if chirstmas < now {
        component.year = yearOfNextChristmas + 1
        chirstmas = component.date!
    }
    
    let componentFormatter = DateComponentsFormatter()
    componentFormatter.unitsStyle = .full
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]
    
    return componentFormatter.string(from: now, to: chirstmas)!
}

let timeUntilChristmas = howLongUntilChristmas()
print("Time until Christmas: \(timeUntilChristmas)")
