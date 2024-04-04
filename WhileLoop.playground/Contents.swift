import Foundation

enum Coinflip: Int { //Int형으로 지정하면 case들은 0부터 시작
    case heads
    case tails
    
    static func flipCoin() -> Coinflip { //static으 전역함수를 만듬
        return Coinflip(rawValue: Int(arc4random_uniform(2)))!//arc4random_uniform(): Foundation안에 있는 랜덤 함수
    }
}

func howManyHeadInARow() -> Int {
    var numberOfHeadsInRow = 0
    //var coin = Coinflip.flipCoin()
    while Coinflip.flipCoin() == .heads{
        numberOfHeadsInRow = numberOfHeadsInRow + 1
        //coin = numberOfHeadsInRow
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadInARow()
