
import Foundation

enum CoinFlip: Int{
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip{
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
        // 두개의 값중에 하나로 선택되게 됨 (int 실행함수가 optional)
        //arc4random : random 함수
    }
}
func howManyHeadsInARow() -> Int{
    var numberOfHeadsInARow = 0
    var currentCoinFlip = CoinFlip.flipCoin()
    
    while currentCoinFlip == .heads {
        numberOfHeadsInARow = numberOfHeadsInARow + 1
        currentCoinFlip = CoinFlip.flipCoin()
        
    }
 // while함수는 정면일때만 출력되게 해놓음 그렇기 때뭉네 이 코드가 참일ㄷ때 수행됨
    // 거짓일때는 0이 리턴됨.
    return numberOfHeadsInARow
}
let noOfHeads = howManyHeadsInARow()
