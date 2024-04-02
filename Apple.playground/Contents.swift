// 이번에는 ♥️ public 접근 제어 ✨가 어떻게 동작하는지 볼거야
// 보안과 캡슐화를 위해 접근 제어한다고 이해하기 !!
public class Person {
    public let name: String
    public init(name: String) {
        self.name = name
    }
}

// Apple 이라는 회사 🏬
public class Apple {
    public private(set) var ceo: Person
    private var employees = [Person]()
    public let store = AppleStore()
    private let secretDepartment = SecretProductDepartment()
    
    public init() { // 생성자 함수
        ceo = Person(name: "Tim Cook")
        employees.append(ceo) // 우선 ceo만 하나 생성했어
    }
    
    // 새로운 직원이 들어오는 함수
    public func newEmployee(person: Person) {
        employees.append(person)
    }
    
    func weeklyProductMeeting() {
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Not sure!")
        
        // 제대로 입력된다면
        var superSecretProduct = secretDepartment.nextProduct(codeWord: "Titan")
        print(superSecretProduct as Any)
    }
}
