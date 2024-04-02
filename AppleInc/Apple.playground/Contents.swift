import AppleInc

public class Person {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
}


public class Apple {
    //set 은 private한 것 -> ceo를 바꿀수 없음, 읽기는 가능
    public private(set) var ceo: Person
    private var employees = [Person]()
    var access = AccessControl()
    
    public let store = AppleStore()
    private let secretDepartment = SecretProductDepartment()
    
    public init() {
        self.ceo = Person(name: "Tim Cook")
        self.employees.append(self.ceo)
    }
    
    public func newEmployee(person: Person) {
        employees.append(person)
    }
    
    func weeklyProductMeeting() {
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Not sure!")
        var sueprSecretPorduct = secretDepartment.nextProduct(codeWord: "Titan")
        print(superSecretProduct as Any)
    }

    
}
