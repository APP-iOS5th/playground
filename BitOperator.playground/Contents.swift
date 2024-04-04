let zero: Int  = 0b000
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111

//let phone: Int        = 0b0000001
// left_shift operator (<<)
let phone: Int        = 1 << 0
//let tablet: Int       = 0b0000010
let tablet: Int       = 1 << 1
//let watch: Int        = 0b0000100
let watch: Int        = 1 << 2
//let laptop: Int       = 0b0001000
let laptop: Int       = 1 << 3
//let desktop: Int      = 0b0010000
let desktop: Int      = 1 << 4
//let tv: Int           = 0b0100000
let tv: Int           = 1 << 5
//let brainImplant: Int = 0b1000000
let brainImplant: Int = 1 << 6

// radix 진수. radix: 2 는 이진수
print(String(phone + tablet + watch, radix: 2))

let testBit = 0b101010
print(String(testBit, radix: 2))
let resultBit = testBit << 2
print(String(resultBit, radix: 2))

//String(format: "%08d", Int(String(watch, radix: 2))!)

let supportedDevices = phone + tablet + tv

func isSupported(device: Int) -> Bool {
    // AND operator (&)
    let bitWiseANDResult = supportedDevices & device
    let containsDevice = bitWiseANDResult == device
    return containsDevice
}


let phoneSupported = isSupported(device: phone)
print(phoneSupported)
let brainImplantSupported = isSupported(device: brainImplant)
print(brainImplantSupported)

let deviceThatSupportUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv

// OR operator (|)
let stationaryOrUIKitDevices = deviceThatSupportUIKit | stationaryDevices

print(String(deviceThatSupportUIKit, radix: 2))
print(String(stationaryDevices, radix: 2))
print(String(stationaryOrUIKitDevices, radix: 2))

let onlyStationaryOrUIKitDevices = deviceThatSupportUIKit ^ stationaryDevices
print(String(onlyStationaryOrUIKitDevices, radix: 2))
