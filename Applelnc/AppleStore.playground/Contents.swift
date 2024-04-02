

public enum DeviceModel {
    case ipone12
    case ipone12Mini
    case ipone12Pro
    case ipone12ProMax
}

public class AppleiPhone{
    public let model: DeviceModel
    
    fileprivate init(model: DeviceModel) {
        self.model = model
    }
}

fileprivate class Factory {
    func makeiPhone(ofModel model: DeviceModel) -> AppleiPhone{
        return AppleiPhone(model: model)
    }
}


public class AppleStore {
    private var factory = Factory()
    
    public func selliPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return factory.makeiPhone(ofModel: model)
    }
}
