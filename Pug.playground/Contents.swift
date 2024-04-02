
struct Pug{
    let name: String
}
let pugs = [Pug]() //Pug구조체의 배열을 초기화하는 함수

typealias Grumble = [Pug]

var grumble = Grumble()

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble.append(marty)
grumble.append(wolfie)
grumble.append(buddy)
