import AppleInc

// SwiftLanguage 는 open 되어있기 때문에 재정의 할 수 있음
class WinSwift: SwiftLanguage {
    override func versionNumber() -> Float {
        return 5.3
    }
    
    override func supportedPlatforms() -> [String] {
        var supported = super.supportedPlatforms()
        supported.append("Windows") // 확장 중 ..
        return supported
    }
}
