
public enum DeviceModel {
    case iPhone12
    case iPhone12Mini
    case iPhone12Pro
    case iPhone12ProMax
}

public class AppleiPhone {
    public let model: DeviceModel
    
    fileprivate init(model: DeviceModel) {
        self.model = model
    }
}
