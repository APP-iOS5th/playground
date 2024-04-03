//
//
//struct Pug {
//    let name: String
//}
//
////let pugs: [Pug] = []
////let pugs = [Pug]()
//
//typealias Grumble = [Pug]
//
//var grumble = Grumble()
//
//let marty = Pug(name: "Marty McPug")
//let wolfie = Pug(name: "Wolfgang Pug")
//let buddy = Pug(name: "Buddy")
//
//grumble.append(marty)
//grumble.append(wolfie)
//grumble.append(buddy)
//
//print(grumble)

//enum Channel {
//    case SBS
//    case KBS
//    case MBC
//}
//
//class ProgrammeFetcher {
//    
//    typealias FetchResltHandler = (String?, Error?) -> Void
//    
//    func fetchCurrentProgrammeName(forChannel channel: Channel, resultHandler: FetchResltHandler) {
//        let exampleProgramName = "Sherlock"
//        resultHandler(exampleProgramName, nil)
//    }
//    
//    func fetchNextProgrammeName(forChannel channel: Channel, resultHandler: FetchResltHandler) {
//        let exampleProgramName = "Luther"
//        resultHandler(exampleProgramName, nil)
//    }
//}
//
//
//let fetcher = ProgrammeFetcher()
//fetcher.fetchCurrentProgrammeName(forChannel: .SBS, resultHandler: { programmeName, error in
//    print(programmeName ?? "N/A")
//})

//class UserManager {
//    var currentUserName: String = "Emmanuel Goldstein" {
//        willSet (newUserName) {
//            print("Goodbye to \(currentUserName)")
//            print("I hear \(newUserName) is on their way")
//        }
//        didSet (oldUserName) {
//            print("Welcome to \(currentUserName)")
//            print("I miss \(oldUserName) already")
//        }
//    }
//}
//
//var manager = UserManager()
//
//print(manager.currentUserName)
//
//manager.currentUserName = "Dade Murphy"
//
//
//extension String {
//    var firstWord: String {
//        let spaceIndex = firstIndex(of: " ") ?? endIndex
//        let word = prefix(upTo: spaceIndex)
//   
//        return String(word)
//    }
//}
//
//let llap = "Live long ,and prosper"
//let firstWord = llap.firstWord
//print(firstWord)

protocol IntRepresentable {
    var intValue: Int {get}
}

extension Int: IntRepresentable {
    var intValue: Int {
        return self
    }
}

extension String: IntRepresentable {
    var intValue: Int {
        return Int(self) ?? 0
    }
}

enum CrewComplement: Int {
    case enterpriseD = 100
    case voyager = 150
    case deepSpaceNine = 2000
}

extension CrewComplement: IntRepresentable {
    var intValue: Int {
        return rawValue
    }
}

//배열 선언할때 var a = [타입](), var a: [타입] = [], var a: Array<타입> = [] 


