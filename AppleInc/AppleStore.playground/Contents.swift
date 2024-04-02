import UIKit

// 외부에서 사용 가능하나, 수정은 불가능
public enum DeviceModel {
    case iPhone12
    case iPhone12Mini
    case iPhone12Pro
    case iPhone12ProMax
}

// 클래스 생성은 이 안에서만, 그러나 외부에서 사용은 가능
public class AppleiPhone {
    public let model: DeviceModel
    
    fileprivate init(model: DeviceModel) {
        self.model = model
    }
}

// 이 파일 안에서만 사용 가능
fileprivate class Factory {
    func makeiPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return AppleiPhone(model: model)
    }
}

public class AppleStore {
    private var factory = Factory()
    public func selliphone(ofModel model: DeviceModel) -> AppleiPhone {
        return factory.makeiPhone(ofModel: model)
    }
}
