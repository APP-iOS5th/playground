
import CoreLocation

protocol TransportLocation {
    var location: CLLocation { get }
}

protocol TransportMethod {
    associatedtype CollectionPoint: TransportLocation
    var dedaultCollectionPoint: CollectionPoint { get }
    var averageSpeedInKPH: Double { get }
    
}

struct Train: TransportMethod, TransporLocation {
    var location: CLLocation
    
    typealias CollectionPoint = TrainStation
    
    var dedaultCollectionPoint: TrainStation {
        return TrainStation.BMS
    }
    
    var averageSpeedInKPH: Double
    
   
    
    
}

enum TrainStation: String {
    case BMS = "1"
    case VIC = "2"
    case RAI = "3"
    case BTN = "4"
}
