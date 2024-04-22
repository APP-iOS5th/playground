import SwiftUI
//
//let value = 4
//
//switch (value) {
//    
//case 0:
//    print("zero")
//    
//case 1:
//    print("one")
//    
//case 2:
//    print("two")
//    
//case 3:
//    print("three")
//    
//case 4:
//    print("four")
//    
//case 5:
//    print("five")
//    
//default:
//    print("Integer out of range")
//}
//
//
//
//
//let value2 = 1
//
//switch(value2) {
//case 0, 1, 2: //케이스 구문 결합 사례
//    print("zero, one or two")
//    
//case 3:
//    print("three")
//    
//case 4:
//    print("four")
//    
//case 5:
//    print("five")
//    
//default:
//    print("Integer out of range")
//    
//}
//
//let temperature = 83
//
//switch (temperature) {
//case 0...49: //case 구문에 범위 매칭
//    print("Cold")
//    
//case 50...79:
//    print("Warm")
//    
//case 80...110:
//    print("Hot")
//    
//default:
//    print("Temperature out of range")
//}
//
//
//let temperature2 = 54
//
//switch (temperature2) {
//case 0...49 where temperature2 % 2 == 0:
//    print("Cold and even")
//    
//case 50...79 where temperature2 % 2 == 0:
//    print("Warm and even")
//    
//case 80...10 where temperature2 % 2 == 0:
//    print("Hot and even")
//    
//default:
//    print("Temperature out of range or odd")
//}


let temperature3 = 10

switch (temperature3) {
    
case 0...49 where temperature3 % 2 == 0:
    print("Cold and even")
    fallthrough
    
case 50...79 where temperature3 % 2 == 0:
    print("Warm and even")
    fallthrough
    
case 80...110 where temperature3 % 2 == 0:
    print("Hot and even")
    fallthrough
    
default:
    print("Temperature out of range or odd")
}
