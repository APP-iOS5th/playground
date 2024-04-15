import UIKit

var greeting = "Hello, playground"

/// Class 클래스 이름: 부모 클래스 {
///  프로퍼티
///   let, var 정의
///   인스턴스 메서드
///   타입 매서드

class BankAccount {
    /// 프로퍼티
    var accountBlance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    var balanceLessFees: Float {
        get {
            return accountBlance - fees
        }
        set (accountBlance) {
            self.accountBlance = accountBlance - fees
        }
    }
    
    lazy var myProperty: String = {
///       var result = resourceIntensiveTask()
///        result = processData(data: result)
        return ""
    }()
    
    init() {
        accountNumber = 0
        accountBlance = 0
    }
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBlance = balance
    }
    deinit {
        /// 필요한 정리작업을 수행
    }
    /// 인스턴스 메서드
    func displayBalance() -> Void {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBlance)")
    }
    
    /// class 타입 메서드 상속 재정의 가능, static은 재정의 불가능
    static func getMaxBalance() -> Float {
        return 100000.00
    }
}

var bankAccount = BankAccount()

print(bankAccount.accountBlance)
print(bankAccount.accountNumber)
bankAccount.displayBalance()

print(BankAccount.getMaxBalance())
