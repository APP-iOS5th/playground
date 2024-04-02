struct Pug {
    let name: String
}

// 배열 초기화
let pugs = [Pug]()

typealias Grumble = [Pug]

var grumble = Grumble() // 위 pugs 상수와 동일

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble.append(marty)
grumble.append(wolfie)
grumble.append(buddy)
