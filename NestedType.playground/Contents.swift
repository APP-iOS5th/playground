
class Device {
    enum Category {
        case watch
        case phone
        case tablet
    }
    
    enum Orientaion {
        case portrait
        case portraitUpsideDown
        case landscapeLeft
        case landscapeRight
    }
    
    let category: Category
    
    var currentOrientation: Orientaion = .portrait
    
    init(category: Category) {
        self.category = category
    }
}

Device(category: Device.Category.phone)
