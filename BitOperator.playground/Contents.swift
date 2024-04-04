// ✨ Bit 연산자 ♥️ 에 관하여

let zero: Int = 0b000 // 0b 가 비트를 저장하기 위한 공간이라고 생각하면 됨
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
print(desktop)

let supportedDevices = phone + tablet + tv

func isSupported(device: Int) -> Bool {
    let bitWiseANDResult = supportedDevices & device
    let containsDevice = bitWiseANDResult == device
    return containsDevice
}


let phoneSupported = isSupported(device: phone)
print(phoneSupported)

let brainImplantSupported = isSupported(device: brainImplant)
print(brainImplantSupported)
