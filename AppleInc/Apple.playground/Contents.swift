import AppleInc


public class Person{
    public let name: String
    public init(name:String){
        self.name = name
    }
}
public class Apple {
    public private (set) var ceo: Person
    private var employees = [Person]()
    public let stote = AppleStore()
    private let secretDepartment = SecretProductDepartment()
    
    public init(){
        ceo = Person(name: "Tim Cook")
        employees.append(ceo)
    }
    public func newEmployee(person:Person) {
        employees.append(person)
    }
    func weeklyProductMeeting() {
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Not Sure")
        
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Titan")
        
        print(superSecretProduct)
    }
}
