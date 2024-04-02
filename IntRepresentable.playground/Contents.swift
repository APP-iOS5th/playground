
protocol IntRepresentable {
    var intValue: Int { get }
}

extension Int: IntRepresentable {
    var intValue: Int {
        return self
    }
}

extension String : IntRepresentable {
    var intValue: Int {
        return Int(self) ?? 0
    }
}


enum CrewComplement: Int {
    case enterpriseD = 100
    case voyager = 150
    case deepSpaceNine = 2000
}

extension CrewComplement: IntRepresentable {
    var intValue: Int {
        return rawValue
    }
}

var intablethings = [IntRepresentable]()
intablethings.append(55)
intablethings.append(1200)
intablethings.append("5")
intablethings.append("1009")
intablethings.append(CrewComplement.enterpriseD)
intablethings.append(CrewComplement.voyager)
intablethings.append(CrewComplement.deepSpaceNine)

let over1000 = intablethings.compactMap{ $0.intValue > 1000 ? $0.intValue : nil}

print(over1000)
