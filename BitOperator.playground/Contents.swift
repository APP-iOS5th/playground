
/**  비트 연산자  **/


/// 비트 연잔사 소개
/// Swift의 비트 연산자는 수치의 비트 표현을 조작하는데 사용.
let zero: Int  = 0b000 //3개의 비트를 가지고 있는데, 표햔할 수 있는 숫자는 8.
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111


/// 장치 지원 표현
/// 각 장치를 다른 비트로 나타내어 하나의 정수 값으로 모든 지원 장치를 표현합니다.
let phone: Int        = 0b0000001
let tablet: Int       = 0b0000010
let watch: Int        = 0b0000100
let laptop: Int       = 0b0001000
let desktop: Int      = 0b0010000
let tv: Int          = 0b0100000
let brainImplant: Int  = 0b1000000

print(String(five, radix: 2)) //앞자기 0을 제외하고 출력해준다.
print(String(phone + tablet + watch, radix: 2)) //radix: 진수
print(String(desktop, radix: 2))


let supportedDevices = phone + tablet + tv

/// 비트 AND 연산을 사용한 지원 여부 확인
/// - Parameter device: 연산할 장치의 비트
/// - Returns: supportedDevices와 받은 Parameter와 AND 연산의 결과를 Boolean으로 반환
func isSupported(device: Int) -> Bool {
    let bitWiseANDResult = supportedDevices & device //AND Operator : 두 값 모두 1이어야 1비트 설정
    let containsDevice = bitWiseANDResult == device
    
    return containsDevice
}

let phonetSupported = isSupported(device: phone)
print(brainImplantSupported)

let brainImplantSupported = isSupported(device: brainImplant)
print(brainImplantSupported)


let deviceThatSupportUIKit = phone + tablet + tv
let stationaryDevices = desktop + tv

///OR Operator: 두 값 중 하나라고 1이면 1비트 설정.
let stationaryOrUIKitDevices = deviceThatSupportUIKit | stationaryDevices
///XOR Operator: 두 값 중 하나만 1일 때 해당 비트를 1로 설정.
let onlyStationaryOrUIKitDevices = deviceThatSupportUIKit ^ stationaryDevices

print(String(deviceThatSupportUIKit, radix: 2))
print(String(stationaryDevices, radix: 2))
print(String(onlyStationaryOrUIKitDevices, radix: 2))
