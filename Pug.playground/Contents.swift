import UIKit

struct Pug {
    let name: String
}

let pugs = [Pug]()  // Pug 구조체의 배열로 초기화

typealias Grumble = [Pug]   // 별칭 설정

var grumble = Grumble() // [Pug]() 로 초기화한 것과 동일

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble.append(marty)
grumble.append(wolfie)
grumble.append(buddy)
