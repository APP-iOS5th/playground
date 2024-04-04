//bit연산

let zero: Int  = 0b000
let one: Int   = 0b001
let two: Int = 0b010
let three: Int = 0b011
let four: Int = 0b100
let five: Int = 0b101
let six: Int = 0b110
let seven: Int = 0b111

let phone: Int        = 1 << 0
let tablet: Int       = 1 << 1
let watch: Int        = 1 << 2
let laptop: Int       = 1 << 3
let desktop: Int      = 1 << 4
let tv: Int           = 1 << 5
let brainImplant: Int = 1 << 6

print(String(five, radix: 2))
print(String(phone + tablet + watch, radix: 2)) //radix가 2진수로 표현하게해줌
print(String(desktop, radix: 2))

let supportedDevices = phone + tablet + watch

func isSpported(device: Int) -> Bool {
    let bitWiseAndResult = supportedDevices & device //&: and 연산
    let containsDevice = bitWiseAndResult == device
    return containsDevice
}

let phoneSupported = isSpported(device: phone)
print(phoneSupported)

let brainImplantSupported = isSpported(device: brainImplant)
print(brainImplantSupported)

//or연산
let deviceThatSupportUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv

let stationaryOrUIKitDevices = deviceThatSupportUIKit | stationaryDevices

print(String(deviceThatSupportUIKit,radix: 2))
print(String(stationaryDevices,radix: 2))
print(String(stationaryOrUIKitDevices,radix: 2))

//Xor
let onlyStationaryOrUIKitDevices = deviceThatSupportUIKit ^ stationaryDevices
print(String(onlyStationaryOrUIKitDevices, radix: 2))

