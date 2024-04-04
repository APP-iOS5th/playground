import CoreLocation

protocol TransportLocation {
    var location: CLLocation { get }
}

protocol TransportMethod {
<<<<<<< HEAD
    // 타입을 넣어서 강제화
    associatedtype CollectionPoint: TransportLocation
    var defaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
    
=======
    associatedtype CollectionPoint: TransportLocation
    var defaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
>>>>>>> main
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

enum TrainStation: String, TransportLocation {
    case BMS = "Bromley South"
    case VIC = "London Victoria"
    case RAI = "Rainham (Kent)"
    case BTN = "Brighton (East Sussex)"
    
    var location: CLLocation {
        switch self {
        case .BMS:
<<<<<<< HEAD
            return CLLocation(latitude: 51.4000504, longitude: 0.0174237)
        case .VIC:
            return CLLocation(latitude: 51.4952103, longitude: -0.1428979)
        case .RAI:
            return CLLocation(latitude: 51.3663, longitude: 0.61137)
        case .BTN:
            return CLLocation(latitude: 50.829, longitude: -0.14125)
=======
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
>>>>>>> main
        }
    }
}

class Journey<TransportType: TransportMethod> {
    let start: TransportType.CollectionPoint
    let end: TransportType.CollectionPoint
    let method: TransportType
    var distanceInKMs: Double
    var durationInHours: Double
    
    init(start: TransportType.CollectionPoint,
         end: TransportType.CollectionPoint,
         method: TransportType) {
        self.start = start
        self.end = end
        self.method = method
        distanceInKMs = end.location.distance(from: start.location) / 1000
        durationInHours = distanceInKMs / method.averageSpeedInKPH
    }
}
<<<<<<< HEAD
// Road 에서 CLLocation 을 사용하기 위해
=======

>>>>>>> main
extension CLLocation: TransportLocation {
    var location: CLLocation {
        return self
    }
}
<<<<<<< HEAD
=======

>>>>>>> main
enum Road: TransportMethod {
    typealias CollectionPoint = CLLocation
    
    case car
<<<<<<< HEAD
    case motobile
=======
    case motobike
>>>>>>> main
    case van
    case hgv
    
    var defaultCollectionPoint: CLLocation {
        return CLLocation(latitude: 51.1, longitude: 0.1)
    }
<<<<<<< HEAD
    var averageSpeedInKPH: Double {
        switch self {
        case .car: return 60
        case .motobile: return 70
=======
    
    var averageSpeedInKPH: Double {
        switch self {
        case .car: return 60
        case .motobike: return 70
>>>>>>> main
        case .van: return 55
        case .hgv: return 50
        }
    }
}

<<<<<<< HEAD
let start = CLLocation(latitude: 51.3993669, longitude: 0.0116888)
=======
let start = CLLocation(latitude: 51.3994669, longitude: 0.0116888)
>>>>>>> main
let end = CLLocation(latitude: 51.2968654, longitude: 0.5053609)
let roadJourney = Journey(start: start, end: end, method: Road.car)

let distanceByRoad = roadJourney.distanceInKMs
<<<<<<< HEAD
let durationInHours = roadJourney.durationInHours

print("Journey distance: \(distanceByRoad) km")
print("Journey duration: \(durationInHours) hours")
=======
let durationByRoad = roadJourney.durationInHours

print("Journey distance: \(distanceByRoad) km")
print("Journey duration: \(durationByRoad) hours")
>>>>>>> main
