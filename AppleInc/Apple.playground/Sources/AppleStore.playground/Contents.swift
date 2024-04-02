
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


fileprivate class Factory {
    func makeiPhone(ofMedel model: DeviceModel) -> AppleiPhone {
        return AppleiPhone(model: model)
    }
}

public class AppleStore {
    private var factory = Factory()
    
    public func selliPone(ofModel model: DeviceModel) -> AppleiPhone {
        return factory.makeiPhone(ofMedel: model)
    }
}
