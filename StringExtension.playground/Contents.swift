import UIKit

extension String {
    func firstWord() -> String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        
        return String(word)
    }
    
    var firstWordVar: String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        
        return String(word)
    }
}

let llap = "Live long, and prosper"
print(llap.firstWord())
print(llap.firstWordVar)
