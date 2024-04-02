
// 프로토콜은 계약이라서 값을 가질 수 없음
protocol IntRepresentable { // 정수형으로 표현하게끔 만든 프로토콜
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

var ten = "10"
var tenInt: Int = ten.intValue // 정수형 변환
print(tenInt)

enum CrewComplement: Int {
    case enterpriseD = 1014
    case voyager = 150
    case deepSpaceNine = 2000
}

extension CrewComplement: IntRepresentable {
    var intValue: Int {
        return rawValue // case 에 오는 값을 리턴
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

// compactMap 은 forLoop 과 유사
let over1000 = intableThings.compactMap{$0.intValue > 1000 ? $0.intValue: nil}
print(over1000)
