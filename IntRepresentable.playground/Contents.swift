
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

var ten = "10"
print(ten.intValue)
