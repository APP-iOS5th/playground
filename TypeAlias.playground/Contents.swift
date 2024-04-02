import UIKit

//MARK: - Typealias
struct Pug {
    let name: String
}

let pugs = [Pug]()

typealias Grumble = [Pug]

var grumble = Grumble()

let wolfie = Pug(name: "Wolfgang Pug")
let marty = Pug(name: "Marty McPug")
let buddy = Pug(name: "Buddy")

grumble.append(wolfie)
grumble.append(marty)
grumble.append(buddy)
