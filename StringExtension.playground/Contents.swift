extension String {
    func firstWord() -> String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex) //spaceIndex 앞 부분을 word에 할당
        return String(word)
    }
}

let llap = "Live long, and prosper"
let firstWord = llap.firstWord()
print(firstWord)
