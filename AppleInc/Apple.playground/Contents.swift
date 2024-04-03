import AppleInc

public class Person {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }

}

public class Apple {
    public private(set) var ceo: Person // apple.person = newPerson이 안된다는 얘기
    private var employees = [Person]()
    public let store = AppleStore()
//    private let secretDepartment = SecretProductDepartment()
    
    public init() {
        ceo = Person(name: "Tim Cook")
        employees.append(ceo)
    }
    
//    public fun
}
