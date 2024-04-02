struct Pug {
    let name: String
}

// Pug 배열을 초기화하는 함수
//let pugs = [Pug]()

typealias Grumble = [Pug]

var pugs = Grumble()

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

pugs.append(marty)
pugs.append(wolfie)
pugs.append(buddy)

print(pugs)
