
class Device {
    
    enum Category{
        case watch
        case phone
        case tablet
    }
    
    enum Orientation {
        case portrait
        case portraitUpsideDown
        case landscapeLeft
        case landscapeRight
    }
    
    
    let catagory: Category
    var currentOrientation: Orientation = .portrait
    
    init(category: Category) {
        self.catagory = category
    }
}

Device(category: Device.Category.phone)
