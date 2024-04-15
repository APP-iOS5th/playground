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
