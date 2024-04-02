
public enum DeviceModel {
    case iPhone12
    case iPhone12mini
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
        return AppleiPhone(model: model)
    }
}

public class AppleStore {
    private var facotry = Factory()
    
    public func selliPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return facotry.makeiPhone(ofModel: model)
    }
}
