

let zero: Int  = 0b000
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111

let phone: Int        = 1 << 0
let tablet: Int       = 1 << 1
let watch: Int        = 1 << 2
let laptop: Int       = 1 << 3
let desktop: Int      = 1 << 4
let tv: Int           = 1 << 5
let brainImplant: Int = 1 << 6

print(String((five), radix: 2))
print(String((phone + tablet + watch), radix: 2))
print(String((desktop), radix: 2))


let supportedDevices = phone + tablet + tv

func isSuppored(device: Int) -> Bool {
    let bitWiseAndResult = supportedDevices & device
    let containsDevice = bitWiseAndResult == device
    
    return containsDevice
}

let phoneSuppoerted = isSuppored(device: phone)
print(phoneSuppoerted)

let brainImplantSupported = isSuppored(device: brainImplant)
print(brainImplantSupported)



let deviceThatSupportUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv

let stationaryOrUIKitDevices = deviceThatSupportUIKit | stationaryDevices
print(String((deviceThatSupportUIKit), radix: 2))
print(String((stationaryDevices), radix: 2))
print(String((stationaryOrUIKitDevices), radix: 2))


let onlyStationaryOrUIKitDevices = deviceThatSupportUIKit ^ stationaryDevices
print(String((deviceThatSupportUIKit), radix: 2))
print(String((stationaryDevices), radix: 2))
print(String((onlyStationaryOrUIKitDevices), radix: 2))

let testBit = 0b101010
print(String(testBit, radix: 2))
let result = testBit << 2
print(String(result, radix: 2))
