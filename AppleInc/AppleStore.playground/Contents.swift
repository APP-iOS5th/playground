
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
    func makeiPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return Appleiphone(model: model)
    }
}

public class AppleStore {
    private var factory = Factory()
    
    public func selliphone(ofModel model: DeviceModel) -> AppliPhone {
        return factory.makeiPhone(ofModel: model)
    }
}
