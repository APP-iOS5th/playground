
// ♥️ Extension ✨
// 문자열 객체 String 에 함수 firstWord 를 추가해줌
extension String {
    func firstWord() -> String {
        
        // 첫번째 공백문자의 위치.. 혹은 공백문자 없다면 끝까지 잘라서 리턴
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex) // prefix 는 말머리
        
        return String(word)
    }
}

let llap = "Live long, and prosper"
let firstWord = llap.firstWord()
print(firstWord)
