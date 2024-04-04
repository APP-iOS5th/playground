import UIKit

//MARK: - Bit

let zero: Int  = 0b000
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111


var phone: Int = 0b0000001
var tablet: Int = 0b0000010
var watch: Int = 0b0000100
var laptop: Int = 0b0001000
var desktop: Int = 0b0010000
var tv: Int = 0b0100000
var brainImplant: Int = 0b1000000

let supportedDevides = phone + tablet + tv

func isSupported(device: Int) -> Bool {
    let bitWiseANDResult = supportedDevides & device
    let containsDevice = bitWiseANDResult == device
    return containsDevice
}
 
let phoneSupported = isSupported(device: phone)
print(phoneSupported)

let brainImplantSupported = isSupported(device: brainImplant)
print(brainImplantSupported)


let deviceThatSupportedUIkit = phone + tablet + tv
let stationaryDevices = desktop + tv

let stationaryOrUIKitDevices = deviceThatSupportedUIkit | stationaryDevices
// ^는 XOr기호

//Bit Shihft Operator
phone = 1 << 0
tablet = 1 << 1
watch = 1 << 2
