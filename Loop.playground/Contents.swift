import UIKit

let theBeatles: [String] = ["John", "Paul", "George", "Ringo"]

theBeatles.forEach{ print($0) }

(1...9).forEach{ print("5 X \($0) = \($0 * 5)") }
print(String(repeating: "-", count: 30))
(1..<9).forEach{ print("5 X \($0) = \($0 * 5)") }
print(String(repeating: "-", count: 30))

let beatlesByInstrument: [String: String] = ["rhythm guitar": "John", "bass guitar": "Paul", "lead guitar": "George", "drums": "Ringo"]
for (key, value) in beatlesByInstrument {
    print("\(value) plays \(key)")
}
print(String(repeating: "-", count: 30))
