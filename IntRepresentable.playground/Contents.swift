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

var stringValue = "ab"
print(stringValue.intValue)
