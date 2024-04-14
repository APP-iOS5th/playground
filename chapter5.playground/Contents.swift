import SwiftUI

var myChar1 = "f"
var myChar2 = ":"
var myChar3 = "X"

var myChar4 = "\u{0058}"

var userName = "John"
var inboxCount = 25
let maxCount = 100

var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount - inboxCount) messages."

print(message)

var multiline = """

    The console glowed with flashing warnings.
    Clearly time was running out.
    
    "I thought you said you knew how to fly this!" yelled Mary.
    
    "It was much easier on the simulator" replied her brother, trying to keep the panic out of his voice.

"""

print(multiline)

var newline = "\n"

var example1 = "I love you baby \n and if it's quite all right \r I need you baby."

print(example1)

var backslash = "\\"

let maxUserCount = 20

var userCount: Int = 10

var signalStrength = 2.231
let companyName = "My Company"

let bookTitle = "SwiftUI Essentials"

let bookTitle2: String

//if iosBookType {
//        bookTitle2 = "SwiftUI Essentials"
//} else {
//        bookTitle2 = "Android Studio Development Essentials"
//}

//let myTuple = (10, 432.433, "This is a String")
//let myString = myTuple.2
//print(myString)
//
//let (myInt, myFloat, myString) = myTuple
//
//var (myInt, _, myString) = myTuple

let myTuple = (count: 10, length: 432.433, message: " This is a String")

print(myTuple.message)

//var index: Int?
//
//if index != nil {
//    // index 변수는 값이 할당되어 있다.
//} else {
//    // index 변수는 값이 할당되어 있지 않다.
//}

//var index: Int?
//
//index = 3
//
//var treeArray = ["Oak", "Pine", "Yew", "Birch"]
//
//if index != nil {
//    print(treeArray[index!])
//} else {
//    print("index does not contain a value")
//}

//if let constantname = optionalName {
//    
//}
//
//if var variablename = optionalName {
//    
//}

var index: Int?

index = 3

var treeArray = ["Oak", "Pine", "Yew", "Birch"]

if let myvalue = index {
    print(treeArray[myvalue])
} else {
    print("index does not contain a value")
}

var index2: Int?

index2 = 3

var treeArray2 = ["Oak", "Pine", "Yew", "Birch"]

if let index2 {
    print(treeArray2[index2])
} else {
    print("index does not contain a value")
}

//약식 옵셔널 바인딩 사용, 한 줄의 코드 내에서 2개의 옵셔널을 언래핑 한 경우
var pet1: String?
var pet2: String?

pet1 = "cat"
pet2 = "dog"

if let pet1, let pet2 {
    print(pet1)
    print(pet2)
} else {
    print("insufficient pets")
}

var petCount = -1

if let pet1, let pet2, petCount > 1 {
    print(pet1)
    print(pet2)
} else {
    print("insufficient pets")
}

let myValue = record.object(forKey: "comment") as! String

let myButton: UIButton = UIButton()

let myControl: myButton as UIControl



let myScrollView: UIScrollView = UIScrollView()

let myTextView = myScrollView as UITextView

let myTextView = myScrollView as! UITextView

if let myTextView = myScrollView as? UITextView {
    print("Type cast to UITextView succeeded")
} else {
    print("Type cast to UITextView failed")
}

if myobject is MyClass {
    // myobject는 MyClass의 인스턴스다.
}
