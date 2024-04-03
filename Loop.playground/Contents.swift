import Foundation
//for

let theBeatles = ["John", "Paul", "George", "Ringo"]

//for musician in theBeatles {
//    print(musician)
//}

//for value in 1...12 { // 1... 1..<12
//    print("5 x \(value) = \(value*5)")
//}

let beatlesByInstrument = ["rhythm guitar": "John",
                           "bass guitar": "Paul",
                           "lead guitar": "George",
                           "drums": "Ringo"]
//for (key, value) in beatlesByInstrument {
//    print("\(value) plays \(key)")
//}


//while
enum CoinFlip: Int { // 정수형 열거형은 defult = 0 입니다~
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
    var currentCoinFlip = CoinFlip.flipCoin()
    
    while currentCoinFlip == .heads {
        numberOfHeadsInRow = numberOfHeadsInRow + 1
        currentCoinFlip = CoinFlip.flipCoin()
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()
