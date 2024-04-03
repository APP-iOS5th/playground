/**  프로토콜과 함꼐 제네릭 사용하기  **/
/// 1. 교통수단에 대한 프로토콜 정의
/// 2. 가처룰 위한 구조체 생성
/// 3. TrainStation 타입 정의
/// 4. 여정 객체 생성

/// 1. 교통 수단의 특징을 정의하는 프로토콜을 생성.
protocol TransportMethod {
    associatedtype CollectionPoint
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
enum TrainStation: String {
    case BMS = "Bromley South"
    case VIC = "London Victoria"
    case RAI = "Rainham (Kent)"
    case BTN = "Brighton (East Sussex)"
}

/// 4. 시작점과 종점을 가진 Journey 클래스 생성.
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

