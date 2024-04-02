//프로퍼티: 상태를 설명하는 무언가?
extension String{
    var firstWord:  String{
        let spaceIndex = firstIndex(of: " ") ?? endIndex //
        let word = prefix(upTo: spaceIndex)
        return String(word)
    }
}

let llap = "Live Long, and prosper"
let firstWord = llap.firstWord
print(firstWord)
