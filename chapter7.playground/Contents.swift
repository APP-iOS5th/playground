import UIKit

//for index in 1...5 {
//    print("Value of index is \(index)")
//}
//
////현재 항목에 대한 참조체가 for 반복문 안에서 필요하지 않다면
//var count = 0
//
//for _ in 1...5 {
//    //현재 값에 대한 참조체가 필요 없다.
//    count += 1
//}
//
//var myCount = 0
//
//while myCount < 100 {
//    myCount += 1
//}

//multiplyByTen(value: 5)
//multiplyByTen(value: 10)

//var i = 10
//
//repeat {
//  i -= 1
//} while (i > 0)
//
//print(i)
//
//var j = 10
//
//for _ in 0..<100
//{
//    j += j
//    
//    if j > 100 {
//        break
//    }
//    
//    print("j = \(j)")
//}


//var i = 1
//
//while i < 20
//{
//    i += 1
//    
//    if (i % 2) != 0 {
//        continue
//    }
//    
//    print("i = \(i)")
//}

//let x = 10
//
//if x > 9 {
//    print("x is greater than 9!")
//}
//

//let x = 10
//
//if x > 9 {
//    print("x is greater than 9!")
//} else {
//    print("x is less then 9!")
//}

//let x = 9
//
//if x == 10 {
//    print("x is 10")
//} else if x == 9 {
//    print("x is 9")
//} else if x == 8 {
//    print("x is 8")
//}
//

func multiplyByTen(value: Int?) {
    guard let number = value, number < 10 else {
        print("Number is too high")
        return
    }
    
    let result = number * 10
    print(result)
}

multiplyByTen(value: 5)
multiplyByTen(value: 10)
multiplyByTen(value: -1)
multiplyByTen(value: nil)
