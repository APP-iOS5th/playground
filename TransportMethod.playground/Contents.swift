protocol TransportMethod {
    associatedtype CollectionPoint
    var defaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
    
}

struct Train: TransportMethod {
    typealias CollectionPoint = TrainStation
    
    var defaultCollectionPoint: TrainStation {
        return TrainStation.BMS
    }
    
    var averageSpeedInKPH: Double {
        return 100
    }
}

enum TrainStation: String {
    case BMS = "Bromley South"
    case VIC = "London Victoria"
    case RAI = "Rainham (Kent)"
    case BTN = "Brighton (East Sussex)"
}

class Journey<TransportType: TransportMethod> {
    let start: TransportType.CollectionPoint
    let end: TransportType.CollectionPoint
    let method: TransportType
    
    init(start: TransportType.CollectionPoint,
         end: TransportType.CollectionPoint,
         method: TransportType) {
        self.start = start
        self.end = end
        self.method = method
    }
    
}
