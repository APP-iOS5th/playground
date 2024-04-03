
/**  if/else  **/

// PoolBallType 열거형을 생성하여 가능한 볼 타입을 설명
enum PoolBallType {
    case solid
    case stripe
    case black
}

// Int를 받아 PoolBallType을 반환하는 메소스 생성
func poolballType(forNumber number: Int) -> PoolBallType? {
    if number > 0 && number < 8 {
        return PoolBallType.solid // return type이 정해져 있어서 "PoolBallType" 생략 가능.
    } else if number > 8 && number < 16 {
        return .stripe
    } else if number == 8 {
        return.black
    } else {
        // null을 기본적으로 허용하지 않기 때문에, 정적타입이기 때문에 에러가 난다.
        // 반환타입을 PoolBallType -> PoolBallType? 으로 변경해줘야 한다.
        return nil
    }
}

let two = poolballType(forNumber: 2)
let eight = poolballType(forNumber: 8)
let twelve = poolballType(forNumber: 12)
let zero = poolballType(forNumber: 0)
let sixteen = poolballType(forNumber: 16)

