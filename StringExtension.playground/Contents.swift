extension String {
//    func firstWord() -> String {
//        // firstIndex, endIndex: 문자열 객체가 가지고 있는 property
//        let spaceIndex = firstIndex(of: " ") ?? endIndex
//        let word = prefix(upTo: spaceIndex)
//        
//        return String(word)
//    }

    var firstWord: String {
        // firstIndex, endIndex: 문자열 객체가 가지고 있는 property
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        
        return String(word)
    }
}

let llap = "Live long, and prosper"

//let firstWord = llap.firstWord()
let firstWord = llap.firstWord

print(firstWord)

var ten = "10"
var intTen = Int(ten)
print(intTen!)
