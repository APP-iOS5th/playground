import UIKit

public enum DeviceModel {
    case iphone12
    case iphone12Mini
    case iphone12Pro
    case iphone12ProMax
}

public class AppleiPhon {
    public let model: DeviceModel
    
    fileprivate init(model: DeviceModel) {
        self.model = model
    }
}

fileprivate class Factory {
    func makeiPhone(pfModel model: DeviceModel) -> AppleiPhon {
        return AppleiPhon(model: model)
    }
}

public class AppleStore {
    private var factory = Factory()
    
    public func selliphone(ofModel model: DeviceModel) -> AppleiPhon {
        return factory.makeiPhone(pfModel: model)
    }
}

print("HHH")
