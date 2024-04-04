
extension String {
    var firstWord: String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        return String(word)
    }
}

let llap = "Live long, and prosper"
let firstword = llap.firstWord
print(firstword)
