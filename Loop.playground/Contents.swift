/*
 반복문
 1..<12 : 1~11까지만 출력
 1...: 무한 반복
 1...12: 1~12까지 출력
 */
let theBeatles = ["John", "Paul", "George", "Ringo"]

//for문
for musician in theBeatles {
    print(musician)
}

for value in 1..<12 {
    print("5 x \(value) = \(value * 5)")
}

for value in 1... {
    if value > 12 {
        break
    }
    print("5 x \(value) = \(value * 5)")
}

let beatlesByInstrumnet = ["rhythm guitar": "John",
                           "bass guitar": "Paul",
                           "lead guitar": "George",
                           "drums": "Ringo"]//딕셔너리

for(key, value) in beatlesByInstrumnet{//튜플
    print("\(value) plays \(key)")
}

