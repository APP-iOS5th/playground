//guard : 서버랑 통신하는 부분에서 많이 쓰임
let inputData: [[String: Any]] = [
    ["name": "Mercury", "positionFromSun": 1, "fractionOfEarthMass": 0.055, "distanceFromSunInAUs": 0.4, "hasRings": false],
    ["name": "Venus", "positionFromSun": 2, "fractionOfEarthMass": 0.815, "distanceFromSunInAUs": 0.7, "hasRings": false],
    ["name": "Earth", "positionFromSun": 3, "fractionOfEarthMass": 1.0, "distanceFromSunInAUs": 1.0, "hasRings": false],
    ["name": "Mars", "positionFromSun": 4, "fractionOfEarthMass": 0.107, "distanceFromSunInAUs": 1.5, "hasRings": false],
    ["name": "Jupiter", "positionFromSun": 5, "fractionOfEarthMass": 318.0, "distanceFromSunInAUs": 5.2, "hasRings": true],
    ["name": "Saturn", "positionFromSun": 6, "fractionOfEarthMass": 95.0, "distanceFromSunInAUs": 9.5, "hasRings": true],
    ["name": "Uranus", "positionFromSun": 7, "fractionOfEarthMass": 14.0, "distanceFromSunInAUs": 19.2, "hasRings": true],
    ["name": "Neptune", "positionFromSun": 8, "fractionOfEarthMass": 17.0, "distanceFromSunInAUs": 30.1, "hasRings": true]
]

struct Planet {
    let name: String
    let positionFromSun: Int
    let fractionOfEarthMass: Double
    let distanceFromSunInAUs: Double
    let hasRings: Bool
}

func makePlanet(fromInput input: [String: Any]) -> Planet? {
    guard
        let name = input["name"] as? String, // as? 문자열 처럼 쓰고 싶은데 아닌 말구
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

func makePlanets(fromInput input: [[String: Any]]) -> [Planet] {
    var planets = [Planet]()
    for inputItem in input {
        guard let planet = makePlanet(fromInput: inputItem) else {
            continue //실행을 컨트롤 하는 예약어
}
        planets.append(planet)
    }
    return planets
}

makePlanets(fromInput: inputData)
