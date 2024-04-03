
/**  Generic   **/
/// 1. RecentList 생성
///     • 사용자가 복사한 마지막 다섯 개의 문자열을 저장하는 커스텀 컬렉션 객체를 만듬.
/// 2. 제네릭을 사용하여 RecentList 업데이트
///     • ListItemType 이라는 제네릭 타입을 정의하여 String 대신 사용.
/// 3. Person 객체 사용


// ListItemType 이라는 대명사, 나중에 들어올 타입이라고 정의. (호출할 때 지정한 타입으로 변경됨.)
class RecentList<ListItemType> {
    var slot1: ListItemType?
    var slot2: ListItemType?
    var slot3: ListItemType?
    var slot4: ListItemType?
    var slot5: ListItemType?
    
    /// 각 slot을 하나씩 아래로 이동
    /// - Parameter recent: recent slot
    func add(recent: ListItemType) {
        slot5 = slot4
        slot4 = slot3
        slot5 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
    /// slot에 있는 문자열 반환해주는 함수
    /// - Returns: slot에 있는 문자열 반환
    func getAll() -> [ListItemType] {
        var recent = [ListItemType]()
        
        if let slot1 = slot1 {
            recent.append(slot1)
        }
        if let slot2 = slot2 {
            recent.append(slot2)
        }
        if let slot3 = slot3 {
            recent.append(slot3)
        }
        if let slot4 = slot4 {
            recent.append(slot4)
        }
        if let slot5 = slot5{
            recent.append(slot5)
        }
        return recent
    }
}

// 문자열 추가 및 출력
let recentlyCopiedList = RecentList<String>()
recentlyCopiedList.add(recent: "First")
recentlyCopiedList.add(recent: "Next")
recentlyCopiedList.add(recent: "Last")

var recentlyCopied = recentlyCopiedList.getAll()
print(recentlyCopied)



/// Person class 생성
class Person {
    let name: String
    
    // 상수를 가지고 있으니까 init을 만들어 줌.
    init(name: String) {
        self.name = name
    }
}

// Person 인스턴스 생성
let rod = Person(name: "Rod")
let jane = Person(name: "Jane")
let freddy = Person(name: "Freddy")

// Person 객체 추가 및 출력 (Person 타입의 RecentList)
let lastCalledList = RecentList<Person>()
lastCalledList.add(recent: freddy)
lastCalledList.add(recent: jane)
lastCalledList.add(recent: rod)

let lastCalled = lastCalledList.getAll()
for person in lastCalled {
    print(person.name)
}
