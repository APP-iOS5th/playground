import CoreLocation

/**  프로토콜과 함꼐 제네릭 사용하기  **/
/// 1. 교통수단에 대한 프로토콜 정의
/// 2. 가처룰 위한 구조체 생성
/// 3. TrainStation 타입 정의
/// 4. 여정 객체 생성
/// 5. 위치 정보 제공 프로토콜 정의


///5. CLLocation 객체를 반환하는 TransportLocation 프로토콜을 생성.
protocol TransportLocation {
    var location: CLLocation { get }
}

/// 1. 교통 수단의 특징을 정의하는 프로토콜을 생성.
protocol TransportMethod {
    associatedtype CollectionPoint: TransportLocation
    var defaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
}

/// 2. TransportMethod 프로토콜을 구현하는 Train 구조체 생성.
struct Train: TransportMethod {
    typealias CollectionPoint = TrainStation
    
    var defaultCollectionPoint: TrainStation {
        return TrainStation.BMS
    }
    
    var averageSpeedInKPH: Double {
        return 100
    }
}

/// 3. TrainStation 타입 열거형으로 정의.
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

/// 4. 시작점과 종점을 가진 Journey 클래스 생성.
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

    var defaultCollectionPoint: CLLocation {
        return CLLocation(latitude: 51.1, longitude: 0.1)
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

let start = CLLocation(latitude: 51.3994669, longitude: 0.0116888)
let end = CLLocation(latitude: 51.2968654, longitude: 0.5053609)
let roadJourney = Journey(start: start, end: end, method: Road.car)

let distanceByRoad = roadJourney.distanceInKMs
let durationByRoad = roadJourney.durationInHours

print("Journey distance: \(distanceByRoad) km")
print("Journey duration: \(durationByRoad) hours")
