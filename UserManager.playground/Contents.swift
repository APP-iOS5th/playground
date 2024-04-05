// 프로퍼티 옵저버 : 값 추적, 로그에 종종 사용
class UserManager {
    
    // 프로퍼티 옵저버
    var currentUserName : String = "Emmanuel GoldStein" {
        willSet (newUserName) { // 값 수정 -> 바뀐 후의 값 호출
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on Their way!")
        }
        
        didSet (oldUserName) { // 값 수정 -> 바뀌기 전의 값 호출
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) alreay!")
        }
    }
}

let manager = UserManager()
print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"




