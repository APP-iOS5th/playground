import UIKit

protocol MessageBuilder {
    var name: String {get}
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func buildMessage() -> String {
         return "Hello" + name
    }
}

func doubleFunc1 (value: Int) -> some Equatable {
    return value * 2
}

func doubleFunc2 (value: String) -> some Equatable {
    value + value
}

let intOne = doubleFunc1(value: 10)
print(intOne)
let stringOne = doubleFunc2(value: "Hello")
print(stringOne)

/// 동작하지 않음
///if (intOne == stringOne) {
   /// print("They match")
///}
