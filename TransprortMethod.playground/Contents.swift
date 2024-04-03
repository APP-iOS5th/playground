
protocol TransprortMethod {
    associatedtype CollectionPoint
    var defalutCollectionPoint: CollectionPoint { get } //읽기만 가능한 프로퍼티
    var averageSpeedInKPH: Double{ get }//읽기만 가능한 프로퍼티
}

struct Train: TransprortMethod {
    typealias CollectionPoint = TrainStation
    
    var defalutCollectionPoint: TrainStation {
        return TrainStation.BMS
    }
    
    var averageSpeedInKPH: Double {
        return 100
    }
}

enum TrainStation: String {
    case BMS = "Bromley South"
    case VIC = "Lodon Victoria"
    case RAI = "Rainham (Kent)"
    case BTN = "Brighton (East Sussex)"
}



//TransportType는 제네릭으로 선언
class Journey<TransportType: TransprortMethod> { //TransportType는 제네릭으로 선언
    let start: TransportType.CollectionPoint
    let end: TransportType.CollectionPoint
    let method: TransportType
    
    init(start: TransportType.CollectionPoint, end: TransportType.CollectionPoint, method: TransportType) {
        self.start = start
        self.end = end
        self.method = method
    }
    
}
