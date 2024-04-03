// ✨ for Loop ♥️
// for 루프를 사용해 컬렉션이나 범위의 각 요소에 대해 코드 실행할 수 있음
let theBeatles = ["John", "Paul", "George", "Ringo"]

// theBeatles 배열을 순회하며 각 문자열 요소를 출력하는 루프 🔁
for musician in theBeatles {
    print(musician)
}

print ("--------------")

// 5단 구구단
for value in 1...12 {
    print("5 x \(value) = \(value * 5)")
}

print ("--------------")

for value in 1..<12 {
    print("5 x \(value) = \(value * 5)")
}

print ("--------------")

for value in 1... {
    if value > 12 { break }
    print("5 x \(value) = \(value * 5)")
}

print ("--------------")

// 사전의 키와 값을 출력하는 루프 생성 🔁
// 사전을 순회할 때 키와 값 둘 다 튜플 형태로 제공됨
let beatlesByInstrument = ["rhythm guitar" : "John",
                           "bass guitar" : "Paul",
                           "lead guitar" : "George",
                           "drums" : "Ringo"]

// (key, value) 형태는 튜플
// ✨ for <각 요소> in <컬렉션 또는 범위>
for (key, value) in beatlesByInstrument {
    print("\(value) plays \(key)")
}
