// 문자열 클래스 확장
extension String {
    var firstWord: String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        return String(word)
    }
    
//    func firstWord() -> String {
//        let spaceIndex = firstIndex(of: " ") ?? endIndex
//        let word = prefix(upTo: spaceIndex)
//        return String(word)
//    }
}

let llap = "Live long, and prosper"
let firstWord = llap.firstWord
//let firstWord = llap.firstWord()
print(firstWord)
