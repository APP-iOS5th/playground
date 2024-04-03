import Foundation

enum Coinflip: Int {
    case heads
    case tails
    
    static func flipCoin() -> Coinflip {
        return Coinflip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyHeadInARow() -> Int {
    var numberOfHeadsInRow = 0
    
    while Coinflip.flipCoin() == .heads{
        numberOfHeadsInRow = numberOfHeadsInRow + 1
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadInARow()
