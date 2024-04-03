
// 배열을 생성하고 그 배열의 각 요소에 대해 무언가를 수행.
let theBeatles = ["John", "Paul", "George", "Ringo"]

// theBeatles 배열을 순회하며 각 문자열 요소를 출력하는 루프 생성
for musician in theBeatles {
    print(musician)
}

// 배열을 순회하는 대신 정해진 횟수만큼 코드를 실행하는 루프 생성. (컬렉션이 아닌 범위를 제공함으로써 수행)
for value in 1...12 { // 1 이상 12 이하
    print("5 x \(value) = \(value * 5)")
}

for value in 1..<12 { // 1이상 12 미만
    print("5 x \(value) = \(value * 5)")
}

for value in 1... { // 1이상 12 이하
    if value > 12{
        break
    }
    print("5 x \(value) = \(value * 5)")
}

// 딕셔너리의 키와 값을 출력하는 루프를 생성.
let beatlesByInstrument = ["rhythm guitar": "John",
                        "bass guitar": "Paul",
                        "lead guitar": "George",
                        "drums": "Ringo"]

// 딕셔너리에는 키와 값 사이의 쌍이 있으므로, 딕셔너리를 순회할 때 키와 값 둘 다 튜플의 형태로 제공
// (key, value) -> 요론 구문을 '튜플'
for(key, value) in beatlesByInstrument {
    print("\(value) plays \(key)")
}
