
//외부에 모델만 공개 접근가능
public enum DeviceModel {
    case iphone12
    case iphone12Mini
    case iphone12Pro
    case iphone12ProMax
}

//함수만 접근가능
public class AppleiPhone {
    public let model: DeviceModel
    
    fileprivate init(model:DeviceModel){
        self.model = model
    }
}

//외부에 공개 안되것
fileprivate class Factory {
    func makeiPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return AppleiPhone(model:model)
    }
}

//외부에서 접근가능(판매하는것만)
public class AppleStore {
    private var factory = Factory()
    
    public func selliPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return factory.makeiPhone(ofModel: model)
    }
}
