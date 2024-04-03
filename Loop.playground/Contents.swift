let theBeatles = ["John", "Paul", "George", "Ringo"]

for musician in theBeatles {
    print(musician)
}

for value in 1...12 {
    print("5 x \(value) = \(value * 5)")
}

for value in 1..<12 {
    print("5 x \(value) = \(value * 5)")
}

for value in 1... {
    if value > 12 {
        break
    }
    print("5 x \(value) = \(value * 5)")
}

let beatlesByInstrument = ["rhythm guitar": "John",
                           "bass guitar": "Paul",
                           "lead guitar": "George",
                           "drums": "Ringo"]

for (key, value) in beatlesByInstrument {
    print("\(value) plays \(key)")
}
