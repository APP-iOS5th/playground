class Device {
    enum Category {
        case watch
        case phone
        case tablet
        case a
    }
    
    enum Orientation {
        case portrait
        case portraitUpsideDown
    }
    
    let category: Category
    var currentOrientation: Orientation = .portrait
    
    init(category: Category) {
        self.category = category
    }
}

Device(category: Device.Category.phone)


