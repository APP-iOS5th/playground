/*
 typealias 는 사람 읽기 좋으라고 많이 씀
 가령 우리 수강생 명단을 관리한다 쳤을때
 String 으로 배열타입을 선언하는거보단
 저걸 alias 로 StudentName 이라고 하면
 좀더 코드 가독성 좋음
 */
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
