
//비트 연산자
//3개의 비트를 가짐. 표현할수있는 숫자는 8까지
let zero: Int = 0b000 //binary: 0b
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111
//비트가 많아지면 자릿수가 특정 표현하는 것들이 다양해질수있음?
let phone: Int        = 0b0000001
let tablet: Int       = 0b0000010
let watch: Int        = 0b0000100
// 폰과 태블릿과 왗치만 지원하는 비트 연산 결과임 (phone+ tablet + watch): 지원장비 변수
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


//Or연산자

let deviceThatSupportUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv


let sttionaryOrUIKitDevices = deviceThatSupportUIKit | stationaryDevices
print(String(deviceThatSupportUIKit, radix: 2))
print(String(stationaryDevices, radix: 2))
print(String(sttionaryOrUIKitDevices, radix: 2))

let onlyStationaryOrUIKitDevices = deviceThatSupportUIKit ^ stationaryDevices


