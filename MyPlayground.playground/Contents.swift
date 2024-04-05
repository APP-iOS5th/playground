import UIKit

//var greeting = "Hello, playground"
//
//let phrase: String = "The quick brown fox jumps over the lazy dog"
//
//greeting = "Modification"
//
//let numberOfFoxes:Int = 1
//let numberOfAnimals: Int = 2
//
//let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
//
//var anotherPhrase = phrase
//
//anotherPhrase = "Modification"
//
//
//var phraseInfo = "The phrase" + "has: "
//
//print(phraseInfo)
//
//let phrasesAreEqula = phrase == anotherPhrase
//
//var number: Int?
//number = 3
//
//print(number ?? "hi")
//
//
//func fullName(givenName: String, middleName: String, familyName: String) -> String {
//    return "\(givenName) \(middleName) \(familyName)"
//}
//
//let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon");
//
//print(myFullName)
//
//
//
//class Person {
//    var id:Int
//    
//    init(id:Int) {
//        self.id = id
//    }
//    
//}
//
//class People:Person {
//    var password:Int
//    
//    init(id:Int,password:Int) {
//        super.init(id:id)
//        self.password = password
//        
//    }
//}
//


enum Title:String {
    case hi
    case hello
}


print(Title.hi)



protocol Saveable {
      var saveNeeded: Bool? { get set }
    func saveToRemoteDatabase(string:String,handler: @escaping (Bool) -> Void)
}



class hyhy:Saveable {
   
    
    var saveNeeded: Bool?
    
    func saveToRemoteDatabase(string: String, handler: @escaping (Bool) -> Void) {
        if string == "성공" {
           handler(true)
        } else {
            handler(false)
        }
    }

   
    
   
        
        
  
    
}

let hi = hyhy()


hi.saveToRemoteDatabase(string: "에베베") { bool in
    print("성공일까요? \(bool)")
    
    if bool {
        print("zzz")
        
    } else {
        print("hhh")
    }
    
    
    
    
    
}
