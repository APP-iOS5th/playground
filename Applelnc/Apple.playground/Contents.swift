
public class Person {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
}

public class Apple {
    public private(set) var ceo: Person
    private var employee = [Person]()
    public let store = AppleStore()
    private let secretDepartment = SecretProductDepartment()
    
    public init() {
        ceo = Person(name: "Tim Cook")
        employee.append(ceo)
    }
    
    public func newEmployee(person: Person) {
        employee.append(person)
    }
    
    func weeklyProductMeeting() {
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Not sure!")
        
        superSecretProduct = secretDepartment.nextProduct(codeWord: "Titen")
        
        print(superSecretProduct as Any)
    }
    
}
