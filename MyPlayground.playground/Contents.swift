
protocol Saveable {
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    //....
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
     
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
         saveHandler = handler
         // Send person information to remove database
         // Once remote save is complete, it calls
           // saveComplete(Bool)
         // We'll fake it for the moment, and assume the save is
           // complete.
         saveComplete(success: true)
    }
     
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
} 
