
let zero: Int  = 0b000  // 2진수는 앞에 0b를 넣는다고 합니ㅏㄷ.
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111

let phone: Int        = 0b0000001
let tablet: Int       = 0b0000010
let watch: Int        = 0b0000100
let laptop: Int       = 0b0001000
let desktop: Int      = 0b0010000
let tv: Int           = 0b0100000
let brainImplant: Int = 0b1000000

print(String(phone + tablet + watch))
print(String(five, radix: 2))
print(String(desktop, radix:2))

var supprtedDevices = phone + tablet + tv
func isSupported(device: Int) -> Bool {
    let bitWiseANDResult = supprtedDevices & device
    let containsDevice = bitWiseANDResult == device
    return containsDevice
}

let phoneSupported = isSupported(device: phone)
print(phoneSupported)

let brainImplantSupported = isSupported(device: brainImplant)
print(brainImplant)

// OR 연산
let deviceThatSupportUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv

let stationaryOrUIKitDevieces = deviceThatSupportUIKit | stationaryDevices
print(String(deviceThatSupportUIKit, radix: 2))
print(String(stationaryDevices, radix: 2))
print(String(stationaryOrUIKitDevieces, radix: 2))

let onlyStaionaryOrUIKitDevices = deviceThatSupportUIKit ^ stationaryDevices
print(String(onlyStaionaryOrUIKitDevices, radix: 2))
