import AppleInc

class WinSwift: SwiftLanguage {
    override func versionNumber() -> Float {
        return 5.3
    }
    
    override func supportedPlatforms() -> [String] {
        var supported = super.supportedPlatforms()
        supported.append("Windows")
        return supported
    }
}
