let zero: Int  = 0b000
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

print(String(five, radix: 2))
print(String(phone + tablet + watch, radix: 2))
print(String(desktop, radix: 2))

let suppottedDevices = phone + tablet + tv

// And 연산자
func isSupported(device: Int) -> Bool {
    let bitWiseANDResult = suppottedDevices & device
    let containsDevice = bitWiseANDResult == device
    return containsDevice
}

let phoneSupported = isSupported(device: phone)
print(phoneSupported)

let brainImplantSupported = isSupported(device: brainImplant)
print(brainImplant)

// Or 연산자

let deviceThatSupporUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv

let stationaryOrUIKitDevices = deviceThatSupporUIKit | stationaryDevices

print(String(deviceThatSupporUIKit, radix: 2))
print(String(stationaryDevices, radix: 2))
print(String(stationaryOrUIKitDevices, radix: 2))

// XOR 101 001 일경우 100 으로 계산(같은 1 이면 제외)
let onlyStationaryOrUIKitDevices = deviceThatSupporUIKit ^ stationaryDevices
print(String(onlyStationaryOrUIKitDevices, radix: 2))
