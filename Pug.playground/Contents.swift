

struct Pug {
    let name: String
    
}

//pug 구조체의 배열을 초기화
let pugs = [Pug]()

typealias Grumble = [Pug]
typealias Pugs = [Pug]

var grumble1 = Grumble()
var grumble2 = Pugs()

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble1.append(marty)
grumble1.append(wolfie)
grumble1.append(buddy)



