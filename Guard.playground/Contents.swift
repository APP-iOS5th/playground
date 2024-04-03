
/**  guard 실습  **/
/// guard, 선택적 값의 언랩핑과 체인을 같은 방식으로 사용. (if문과 유사하게 작동)

/// 태양계 행성에 대한 정보를 배열의 딕셔너리 형태로 생성
let inputData: [[String: Any]] = [
    ["name": "Mercury",
     "positionFromSun": 1,
     "fractionOfEarthMass": 0.055,
     "distanceFromSunInAUs": 0.4,
     "hasRings": false],
    ["name": "Venus",
     "positionFromSun": 2,
     "fractionOfEarthMass": 0.815,
     "distanceFromSunInAUs": 0.7,
     "hasRings": false],
    ["name": "Earth",
     "positionFromSun": 3,
     "fractionOfEarthMass": 1.0,
     "distanceFromSunInAUs": 1.0,
     "hasRings": false],
    ["name": "Mars",
     "positionFromSun": 4,
     "fractionOfEarthMass": 0.107,
     "distanceFromSunInAUs": 1.5,
     "hasRings": false],
    ["name": "Jupiter",
     "positionFromSun": 5,
     "fractionOfEarthMass": 318.0,
     "distanceFromSunInAUs": 5.2,
     "hasRings": false],
    ["name": "Saturn",
     "positionFromSun": 6,
     "fractionOfEarthMass": 95.0,
     "distanceFromSunInAUs": 9.5,
     "hasRings": true],
    ["name": "Uranus",
     "positionFromSun": 7,
     "fractionOfEarthMass": 14.0,
     "distanceFromSunInAUs": 19.2,
     "hasRings": false],
    ["name": "Neptune",
     "positionFromSun": 8,
     "fractionOfEarthMass": 17.0,
     "distanceFromSunInAUs": 30.1,
     "hasRings": false]
]

/// Planet 구조체 정의
struct Planet {
    let name: String
    let positionFromSun: Int
    let fractionOfEarthMass: Double
    let distanceFromSunInAUs: Double
    let hasRings: Bool
}

/// 하나의 행성 딕셔너리로부터 Planet 구조체를 만들 수 있는지 확인하는 함수. (guard문을 사용하여 딕셔너리에 필요한 모든 값이 있는지 확인)
/// - Parameter input: <#input description#>
/// - Returns: <#description#>
func makePlanet(fromInput input: [String: Any]) -> Planet? {
    // 서버랑 통신하는 부분에서 guard 구문이 자주 쓰인다. (옵셔널이 나와야되면 아묻따 guard 박고 시작하면 MEU 안전)
    guard let name = input["name"] as? String, // name에 String으로 넣어줘 ? 아님 말고
          let positionFromSun = input["positionFromSun"] as? Int,
          let fractionOfEarthMass = input["fractionOfEarthMass"] as? Double,
          let distanceFromSunInAUs = input["distanceFromSunInAUs"] as? Double,
          let hasRings = input["hasRings"] as? Bool else {
        return nil }
    return Planet(name: name, positionFromSun: positionFromSun, fractionOfEarthMass: fractionOfEarthMass, distanceFromSunInAUs: distanceFromSunInAUs, hasRings: hasRings)
}

/// 행성 딕셔너리 배열을 받아 Planet 구조체 배열을 생성하는 함수. (guard문을 사용하여 Planet 구조체를 성공적으로 생성하는지 확인)
/// - Parameter input: <#input description#>
/// - Returns: <#description#>
func makePlanets(fromInput input: [[String: Any]]) -> [Planet] {
    var planets = [Planet]()
    for inputItem in input {
        guard let planet = makePlanet(fromInput: inputItem) else {
            continue
        }
        planets.append(planet)
    }
    return planets
}

makePlanets(fromInput: inputData)
    


// 함수 설명
// 1.makePalnet : 주어진 딕셔너리에서 필요한 값을 추출하고 타입 캐스팅을 시도, 실패 시 nil 반환
// 2.makePlanets : 배열의 각 딕셔너리에 대해 makePlanet을 호출하여 Planet 배열 생성, 실패 시 다음 반복 실행


// Q : 왜 물음표를 계속 써주는 거죠?..
// A : input["name"]의 타입이 Any여서 String으로 변환하려는건데, 스위프트에서 ? 붙어있으면 해당 연산이 실패할 수 있음을 알려주는거라 생각하면 편함.
//     Any를 String으로 변환하고싶은데 안될수도 있다고 말해주는 것임.
//     변환이 되면 String타입으로 변환되고 실패하면 nil이 되요
