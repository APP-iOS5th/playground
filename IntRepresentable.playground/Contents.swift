
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
