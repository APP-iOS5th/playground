import Foundation

//  //

let theBeatles = ["Jhone", "Paul", "Georage", "Ringo"]
for musician in theBeatles {
    print(musician)
}

print("------")

//  //

for value in 1..<10 {
    print("5 x \(value) = \(value * 5)")
}

print("-----")

for value in 1... {
    if(20 < value) { break }
    print("5 x \(value) = \(value * 5)")
}

print("-----")
let bealyesByInstrument = [
    "rhythem guitar" : "Jhone",
    "base guitar" : "Paul",
    "lead guitar" : "George"
]

for (key, value) in bealyesByInstrument {
    print("\(value) plays \(key)")
}


// while //
print("-----")

enum CoinFlip : Int {
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {
        var randomInt = Int(arc4random_uniform(2))
        print("randomInt : \(randomInt)")
        return CoinFlip(rawValue: randomInt)!
    }
}


func address(_ o: UnsafeRawPointer) -> String {
    let bit = Int(bitPattern: o)
    return String(format: "%p", bit)
}

func howManyHeadsInARow() -> Int {
    
    print("--START--")
    
    var numberOfHeadsInRow = 0
    var currentCoinFlip = CoinFlip.flipCoin()

    
    
    while currentCoinFlip == .heads {
        print("current : \(currentCoinFlip)")
        print("adress: \(address(&currentCoinFlip))")
        numberOfHeadsInRow = numberOfHeadsInRow + 1
        currentCoinFlip = CoinFlip.flipCoin()
        
    }
    print("--END--")
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()






