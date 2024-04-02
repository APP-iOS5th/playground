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

var ten = "10"
print(ten.intValue)
