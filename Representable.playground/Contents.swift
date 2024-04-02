import UIKit

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

var ten: String = "10"
print(ten.intValue)
