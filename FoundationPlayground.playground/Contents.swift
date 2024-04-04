import Foundation

func howLongUntilChristmas() -> String {
    let calendar = Calendar.current //현재 사용하는 캘린더 정보
    let timeZone = TimeZone.current //우리가 사는곳에 시간 정보
    
    let now = Date() //현재 시간
    let yearOfNextChristmas = calendar.component(.year, from: now) //캘린더를 기준으로 현재 시간을 가져오는건가?
    
    var component = DateComponents(calendar: calendar, //dic 같은 느낌
                                   timeZone: timeZone,
                                   year: yearOfNextChristmas,
                                   month: 12,
                                   day:25,
                                   hour:0,
                                   minute: 0,
                                   second: 0)
    
    var christmas = component.date! // 날짜를 가져왔는데
    if christmas < now { // 크리스마스가 지났다면 1년뒤
        component.year = yearOfNextChristmas + 1
        christmas = component.date!
    }
    let componentFormatter = DateComponentsFormatter() //날짜구성요소들을 ...네..?
    
    componentFormatter.unitsStyle = .short//축약 x full 스펠링을..
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]
    
    return componentFormatter.string(from: now, to: christmas)!
}

let timeUntilChristmas = howLongUntilChristmas()
print("Time until Christmas; \(timeUntilChristmas)")
