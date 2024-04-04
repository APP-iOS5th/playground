import UIKit

//MARK: - Nested Type and NameSpace

//Device클래스와 중첩된 열거형 정의

class Device {
    enum Category {
        case watch, phone, tablet
    }
    enum Orientation {
        case portrait, portraitUpsideDown, landscapeLeft, landscapeRight
    }
    let category: Category
    var currentOrientation: Orientation = .portrait
    
    init(category: Category) {
        self.category = category
    }
}

//UserInterface 구조체와 중첩된 타입 정의
struct UserInterface {
    struct Version {
        let major: Int
        let minor: Int
        let patch: Int
    }
    enum Orientation {
        case portrait, landscape
    }
    let version: Version
    var orientation: Orientation
}

//기기 방향을 UI 방향으로 변환하는 함수 정의
func uiOrientation(for deviceOrientation: Device.Orientation) -> UserInterface.Orientation {
    switch deviceOrientation {
    case .portrait, .portraitUpsideDown:
        return .portrait
    case .landscapeLeft, .landscapeRight:
        return .landscape
    }
}

import Foundation
// 사용자 정의 Operation 클래스
class Operation {
    let doctorsName: String
    let patientsName: String
    init(doctorsName: String, patientsName: String) {
        self.doctorsName = doctorsName
        self.patientsName = patientsName
    }
}
// Foundation 모듈의 Operation 클래스와의 차이점 구별
let medicalOperation = Operation(doctorsName: "Dr. Crusher", patientsName: "Commander Riker")
let longRunningOperation = Foundation.Operation()
// 결과 출력
print("Medical Operation: Doctor's Name: \(medicalOperation.doctorsName), Patient's Name: \(medicalOperation.patientsName)")
print("Foundation Operation: \(longRunningOperation)")
