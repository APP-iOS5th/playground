//bit를 표현하려면 표현하려는 비트 앞에 '0b'를 붙인다.

let zero: Int  = 0b000 // 000 -> 3 bit
let one: Int   = 0b001
let two: Int   = 0b010
let three: Int = 0b011
let four: Int  = 0b100
let five: Int  = 0b101
let six: Int   = 0b110
let seven: Int = 0b111

// bit가 많아질수록 비트마다 할당할수있는 기능의 개수가 늘어남.
// Ex) 0000001 -> Phone, 0000010 -> Tablet..

let phone: Int        = 0b0000001 // 0000001 -> 7 bit
let tablet: Int       = 0b0000010
let watch: Int        = 0b0000100
let laptop: Int       = 0b0001000
let desktop: Int      = 0b0010000
let tv: Int           = 0b0100000
let brainImplant: Int = 0b1000000


//radix: 2 -> 2 '진수'
print(String(phone + tablet + watch, radix: 2))
print(phone + tablet + watch) // 10 진수 계산


