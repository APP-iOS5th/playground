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

class TrainJourney {
    var start: TrainStation
    var end: TrainStation
    let method: Train
    var distanceInKMs: Double
    var durationInHours: Double

    init(method: Train,start: TrainStation, end: TrainStation) {
        self.start = start
        self.end = end
        self.method = method
        // CoreLocation provides the distance in meters,
        // so we divide by 1000 to get kilometers
        distanceInKMs = end.location.distance(from: start.location) / 1000
        durationInHours = distanceInKMs / method.averageSpeedInKPH
    }
}

class RoadJourney {
    var start: CLLocation
    var end: CLLocation
    let method: Road
    var distanceInKMs: Double
    var durationInHours: Double

    init(method: Road,
         start: CLLocation,
         end: CLLocation) {
        self.start = start
        self.end = end
        self.method = method
        // CoreLocation provides the distance in meters,
        // so we divide by 1000 to get kilometers
        distanceInKMs = end.location.distance(from: start.location) / 1000
        durationInHours = distanceInKMs / method.averageSpeedInKPH
    }
}


class Journey<TransportType: TransportMethod> {
    var start: TransportType.CollectionPoint
    var end: TransportType.CollectionPoint
    let method: TransportType
    var distanceInKMs: Double
    var durationInHours: Double

    init(method: TransportType,
         start: TransportType.CollectionPoint,
         end: TransportType.CollectionPoint) {
        self.start = start
        self.end = end
        self.method = method
        // CoreLocation provides the distance in meters,
        // so we divide by 1000 to get kilometers
        distanceInKMs = end.location.distance(from: start.location) / 1000
        durationInHours = distanceInKMs / method.averageSpeedInKPH
    }
}

extension CLLocation: TransportLocation {
    var location: CLLocation {
        return self
    }
}

enum Road: TransportMethod {
    typealias CollectionPoint = CLLocation

    case car
    case motobike
    case van
    case hgv

    // The users home or current location
    var defaultCollectionPoint: CLLocation {
        return CLLocation(latitude: 51.1,
                          longitude: 0.1)
    }

    var averageSpeedInKPH: Double {
        switch self {
        case .car: return 60
        case .motobike: return 70
        case .van: return 55
        case .hgv: return 50
        }
    }
}


let trainJourney = TrainJourney(method: Train(),
                           start: TrainStation.BMS,
                           end: TrainStation.VIC)
let distanceByTrain = trainJourney.distanceInKMs
let durationByTrain = trainJourney.durationInHours
print("Journey distance: \(distanceByTrain) km")
print("Journey duration: \(durationByTrain) hours")

let start = CLLocation(latitude: 51.3994669,
                       longitude: 0.0116888)
let end = CLLocation(latitude: 51.2968654,
                     longitude: 0.5053609)
let roadJourney = RoadJourney(method: Road.motobike,
                          start: start,
                          end: end)
let distanceByRoad = roadJourney.distanceInKMs
let durationByRoad = roadJourney.durationInHours
print("Journey distance: \(distanceByRoad) km")
print("Journey duration: \(durationByRoad) hours")
