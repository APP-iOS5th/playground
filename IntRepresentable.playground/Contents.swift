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
 
let over1000 = intableThings.compactMap { $0.intValue > 1000 ? $0.intValue : nil }
print(over1000)
/*
 compactMap 메서드는 컬렉션에 포함된 요소들을 주어진 변환 함수(클로저)를 통해 새로운 형태로 매핑(mapping)한 뒤, 결과 중에서 nil을 제거하고, 나머지 요소들만을 모아 새로운 배열을 생성합니다. 이는 특히 옵셔널 값을 처리하거나 변환 과정에서 nil을 제거하고 싶을 때 유용합니다.
 */
