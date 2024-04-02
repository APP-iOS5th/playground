
// 🍎 애플 공장이 돌아간다는 걸 본다고 생각하자 ✨
// 우리는 아이폰 모델명은 볼 수 있다
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

// 공장은 외부에 공개되어있지 않다
fileprivate class Factory {
    // 아이폰 생성 메소드
    func makeiPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return AppleiPhone(model: model)
    }
}

// 스토어는 외부에 공개되어있다
public class AppleStore {
    private var factory = Factory()
    
    // 우리는 공장은 못보지만 살 수만 있다
    public func selliPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return factory.makeiPhone(ofModel: model)
    }
}
