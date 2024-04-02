
extension String {
    func firstWord() -> String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        return String(word)
    }
}

let llap = "Live long, and prosper"
let firstWord = llap.firstWord()
print(firstWord)

// 기존 타입에 프로토콜 준수 추가
protocol IntRepresentable {
    var intValue : Int {get}
}

extension Int : IntRepresentable {
    var intValue: Int {
        return self
    }
}

extension String: IntRepresentable {
    var intValue: Int {
        return Int(self) ?? 0
    }
}
var ten = "10"
var tenInt: Int = ten.intValue
print(tenInt)
