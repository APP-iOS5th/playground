

let theBeatles = ["John", "Paul", "George", "Ringo"]

for musician in theBeatles {
    print(musician)
}

for value in 1...12 {
    print("5 X \(value) = \(5 * value)")
}


for value in 1..<12 {
    print("5 X \(value) = \(5 * value)")
}


for value in 1... {
    if value > 12 {
        break
    }
    print("5 X \(value) = \(5 * value)")
}

let beatlesByInstrument = ["rhythm guitar": "John",
                            "bass guitar": "Paul",
                            "lead guitar": "George",
                            "drums": "Ringo"]

for (key, value) in beatlesByInstrument {
    print("\(value) plays \(key)")
}
