
public class Person {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
}

public class Apple {
    public private(set) var ceo: Person //읽기는 public 쓰기는 private
    private var employees = [Person]()
    public let store = AppleStore()
    private let secretDepartment = SecretProductDepartment
    
    public init() {
        ceo = Person(name: "Tim Cook")
        employees.append(ceo)
    }
    
    public func newEmployee(person: Person) {
        employees.append(person)
    }
    
    func weeklyProductMeeting() {
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Not sure!")
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Titan")
        print(superSecretProduct as Any)
    }
}
