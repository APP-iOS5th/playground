
// 사용자 친화적, 정리하기 수월
// 프로토콜은 본체가 아니라 계약일 뿐이다. 값을 가질 수 없음, 값을 묘사할 뿐.
protocol IntRepresentable {
    var intValue: Int { get }
}

extension Int: IntRepresentable {
    var intValue: Int {
        return self
    }
}

extension String: IntRepresentable {
    var intValue: Int {
        return Int(self) ?? 0
    }
}

enum CrewComplement: Int {
    case enterpriseD = 1014
    case voyager = 150
    case deepSpaceNine = 2000
}

extension CrewComplement: IntRepresentable {
    var intValue: Int {
        return rawValue
    }
}

var intableThings = [IntRepresentable]()
intableThings.append(55)
intableThings.append(1200)
intableThings.append("5")
intableThings.append("1009")
intableThings.append(CrewComplement.enterpriseD)
intableThings.append(CrewComplement.voyager)
intableThings.append(CrewComplement.deepSpaceNine)

// compactMap : for loop와 유사
// $0 : 배열의 내용물이라도 생각하면 된다.
let over1000 = intableThings.compactMap { $0.intValue > 1000 ? $0.intValue : nil }

print(over1000)
