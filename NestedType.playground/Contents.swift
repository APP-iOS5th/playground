import UIKit

// 중첩 타입
class Device {
    
    enum Category {
        case watch
        case phone
        case tablet
    }
    
    enum Orientation {
        case portrait
        case portraitUpsiteDown
        case landscapeLeft
        case landscapeRight
    }
    
    let category: Category
    let currentOrientation: Orientation = .portrait
    
    init(category: Category) {
        self.category = category
    }
}

let phone = Device(category: Device.Category.phone)
