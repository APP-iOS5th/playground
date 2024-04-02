
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

enum CrewComplement: Int {
    case enterpriseD = 1014
    case voyager = 150
    case deepSpaceNine = 2000
}

extension CrewComplement: IntRepresentable {
    var intValue: Int {
        // enum value 값
        return rawValue
    }
}

var intableThings = [IntRepresentable]()
intableThings.append(50)
intableThings.append(1200)
intableThings.append("5")
intableThings.append("1009")
intableThings.append(CrewComplement.enterpriseD)
intableThings.append(CrewComplement.voyager)
intableThings.append(CrewComplement.deepSpaceNine)

let over100 = intableThings.compactMap { item in
    return item.intValue > 1000 ? item.intValue : nil
}
print(over100)
