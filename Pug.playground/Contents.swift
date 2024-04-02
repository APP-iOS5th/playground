
struct Pug {
    let name: String
}

let pugs: [Pug] = []

typealias Grumble = [Pug]

var grumble = Grumble() // let pugs = [Pug]() 와 동일.

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble.append(marty)
grumble.append(wolfie)
grumble.append(buddy)

print(grumble)
