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

// ✨ Guard ♥️ 문을 사용해 데이터가 올바르게 형식화되었는지 확인하고,
// 그렇지 않은 경우 일찍 종료할 수 있다

struct Planet {
    let name: String
    let positionFromSun: Int
    let fractionOfEarthMass: Double
    let distanceFromSunInAUs: Double
    let hasRings: Bool
}

// 🎀 한 행성의 딕셔너리를 받아 Planet 구조체를 만들 수 있는지 확인하는 함수
// guard 문을 사용해 딕셔너리에 필요한 모든 값이 있는지 확인한다
func makePlanet(fromInput input: [String: Any]) -> Planet? {
    // ❤️‍🩹 Any 는 모든 데이터 타입을 받는 객체 (어머니 같은..)
    // ❤️‍🩹 as 는 Any 를 마치 문자열처럼 쓰고 싶다는 말 ..
    // ❤️‍🩹 as 뒤에 물음표 계속 붙는 이유: input["name"]의 타입이 Any여서 String으로 변환하려는건데, 스위프트에서 ? 붙어있으면 해당 연산이 실패할 수 있음을 알려주는거라 생각하면 편하더라구요. Any를 String으로 변환하고싶은데 안될수도 있다고 말해주는거에요. 변환이 되면 String타입으로 변환되고 실패하면 nil이 돼요.
    // ❤️‍🩹 as 하면 옵셔널 강제 언래핑과 유사하다. 반드시 타입변환에 성공할 때만 사용하는!
    guard
        let name = input["name"] as? String,
        let positionFromSun = input["positionFromSun"] as? Int,
        let fractionOfEarthMass = input["fractionOfEarthMass"] as? Double,
        let distanceFromSunInAUs = input["distanceFromSunInAUs"] as? Double,
        let hasRings = input["hasRings"] as? Bool
    else {
        return nil
    }
    return Planet(name: name,
                  positionFromSun: positionFromSun,
                  fractionOfEarthMass: fractionOfEarthMass,
                  distanceFromSunInAUs: distanceFromSunInAUs,
                  hasRings: hasRings)
}

// 🎀 개별 행성 데이터를 처리할 수 있으므로, 행성 딕셔너리 배열을 받아 Planet 구조체 배열을 만드는 함수 생성, guard 문을 사용해 Planet 구조체를 성공적으로 생성하는지 확인 !!
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
