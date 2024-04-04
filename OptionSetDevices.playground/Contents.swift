
/**  OptionSet  **/
/// OptionSet 프로토콜은 rawValue 프로퍼티를 요구하며, 각 옵션은 정적 상수로 정의.
/// 옵션의 조합도 정적 상수로 정의할 수 있으며, OptionSet은 배열 형태의 옵션을 제공한 후 비트 연산을 통해 하나의 값으로 결합하는 편리한 초기화 방법을 제공.
/// OptionSet 프로토콜은 집합과 유사한 조작 및 비교 방법을 제공.

/// OptionSet Protocol을 사용한 Deives 구조체 정의
struct Devices: OptionSet {
    let rawValue: Int
    
    static let phone = Devices(rawValue: 1 << 0)
    static let tablet = Devices(rawValue: 1 << 1)
    static let watch = Devices(rawValue: 1 << 2)
    static let laptop = Devices(rawValue: 1 << 3)
    static let desktop = Devices(rawValue: 1 << 4)
    static let tv = Devices(rawValue: 1 << 5)
    static let brainImplant = Devices(rawValue: 1 << 6)
    
    static let none: Devices = []
    
    static let all: Devices = [.phone, .tablet, .watch, .laptop, .desktop, .tv, .brainImplant]
    
    static let stationary: Devices = [.desktop, .tv]
    
    static let supportsUIKit: Devices = [.phone, .tablet, .tv]
}

let supportedDevices: Devices = [.phone, . tablet, . watch, .tv]

let phoneIsSupported = supportedDevices.contains(.phone)
