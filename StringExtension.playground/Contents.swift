extension String {
    // "aaa bbb" -> 첫 문자열인 aaa만 잘라옴
    func firstWord() -> String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        return String(word + " - ME!")
    }
}

let liap = "Live long, and prosper" // -> 첫 문자열 Live만 추출
let firstWord = liap.firstWord()
print(firstWord)




