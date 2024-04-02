// String Extension(확장)

extension String {
    func firstWord() -> String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        return String(word + "(It's me!)")
    }
}

let llap = "Live long, and prosper"
let firstWord = llap.firstWord()
print(firstWord)
