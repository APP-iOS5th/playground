enum PoolBallType {
    case solid
    case stripe
    case black
}

func poolballtype(forNumber number: Int) -> PoolBallType? {
    if number > 0 && number < 8 {
        return .solid
    } else if number > 8 && number < 16{
        return .stripe
    } else if number == 8 {
        return .black
    } else {
        return nil
    }
    
}


let tow = poolballtype(forNumber: 2)
let eight = poolballtype(forNumber: 8)
let twelve = poolballtype(forNumber: 12)
let zero = poolballtype(forNumber: 0)
let sixtten = poolballtype(forNumber: 16)
