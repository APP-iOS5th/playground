
struct Pug {
    let name: String
}

let pugs = [Pug]() // Pug 구조체의 배열을 초기화하는 함수

typealias Grumble = [Pug] // Pug 배열 생성을 앞으로 Grumble 로 할 수 있음

var grumble = Grumble() // pugs 만든 코드와 동일한 역할

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble.append(marty)
grumble.append(wolfie)
grumble.append(buddy)
