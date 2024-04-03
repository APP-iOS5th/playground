import CoreLocation

protocol TransportLocation {
    var location: CLLocation { get }
}

protocol TransportMethod {
    associatedtype CollectionPoint: TransportLocation
    var defaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
}

struct Train: TransportMethod {
    typealias CollectionPoint = TrainStation
    var defaultCollectionPoint: TrainStation { return TrainStation.BMS }
    var averageSpeedInKPH: Double { return 100 }
}

enum TrainStation: String, TransportLocation {
    case BMS = "Bromley South"
    case VIC = "London Victoria"
    case RAI = "Rainham (Kent)"
    case BTN = "Brighton (East Sussex)"
    
    var location: CLLocation {
        switch self {
        case .BMS:
            return CLLocation(latitude: 51.4000504,
                              longitude: 0.0174237)
        case .VIC:
            return CLLocation(latitude: 51.4952103,
                              longitude: -0.1438979)
        case .RAI:
            return CLLocation(latitude: 51.3663,
                              longitude: 0.61137)
        case .BTN:
            return CLLocation(latitude: 50.829,
                              longitude: -0.14125)
        }
    }
}
}

class Journey<TransportType: TransportMethod> {
    let start: TransportType.CollectionPoint
    let end: TransportType.CollectionPoint
    let method: TransportType
    
    init(start: TransportType.CollectionPoint, end: TransportType.CollectionPoint, method: TransportType) {
        self.start = start
        self.end = end
        self.method = method
    }
}
