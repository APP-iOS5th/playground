//bit연산

let zero: Int  = 0b000
let one: Int   = 0b001
let two: Int = 0b010
let three: Int = 0b011
let four: Int = 0b100
let five: Int = 0b101
let six: Int = 0b110
let seven: Int = 0b111

let phone: Int        = 0b0000001
let tablet: Int       = 0b0000010
let watch: Int        = 0b0000100
let laptop: Int       = 0b0001000
let desktop: Int      = 0b0010000
let tv: Int           = 0b0100000
let brainImplant: Int = 0b1000000

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


