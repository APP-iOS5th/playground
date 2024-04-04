import Foundation


/**  Foundation - 날짜 비교 및 포맷팅  **/

func howLongUntilChristmas() -> String {
    let calendar = Calendar.current // 전역 컴포티드 프로퍼티
    let timeZone = TimeZone.current // 우리 지역의 시간대 정보
    
    let now = Date() // 현재 시간을 가져온다.
    let yearOfNextChristmas = calendar.component(.year, from: now)
    
    var component = DateComponents(calendar: calendar,
                                   timeZone: timeZone,
                                   year: yearOfNextChristmas,
                                   month: 12,
                                   day: 25,
                                   hour: 0,
                                   minute: 0,
                                   second: 0)
    
    var christmas = component.date!
    if christmas < now {
        component.year = yearOfNextChristmas + 1
        christmas = component.date!
    }
    
    let componentFormatter = DateComponentsFormatter()
    componentFormatter.unitsStyle = .full
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]
    
    return componentFormatter.string(from: now, to: christmas)!
}

let timeUntilChristmas = howLongUntilChristmas()
print(timeUntilChristmas)
