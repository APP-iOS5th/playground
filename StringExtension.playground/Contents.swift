
extension String{
    
    func firstWord() -> String{
        let spaceIndex = firstIndex(of: " ") ?? endIndex //
        let word = prefix(upTo: spaceIndex)
        return String(word)
    }
}

let llap = "Live Long, and prosper"
let firstWord = llap.firstWord()
print(firstWord)
