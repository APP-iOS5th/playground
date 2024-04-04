
/**  중첩 유형 및 네임스페이스  **/

class Device {
    
    enum Categoty {
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
    
    let category: Categoty
    var currentOrientation: Orientation = .portrait
    
    init(category: Categoty) {
        self.category = category
    }
}

Device(category: Device.Categoty.phone)
