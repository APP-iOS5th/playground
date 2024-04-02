//익스텐션 안에서 프로퍼티는 선언 못함
//protocol은 값을 가질 수 없음, 추상적, 물질적인것은 가질 수 없음
protocol IntRepresentable {
    var intValue: Int { get }
}

extension Int: IntRepresentable {
    var intValue: Int {
        return self
    }
}

extension String: IntRepresentable {
    var intValue: Int{
        return Int(self) ?? 0
    }
}

enum CrewComplement: Int {
    case enterpriseD = 1014
    case voyager = 150
    case deepSpaceNine = 2000
}

extension CrewComplement: IntRepresentable{
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
let over1000 = intableThings.compactMap { $0.intValue > 1000 ? $0.intValue : nil } //compactMap는 for루프랑 비슷
print(over1000)
