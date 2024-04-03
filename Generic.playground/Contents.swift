
/**  Generic   **/
/// 1. RecentList 생성
///     • 사용자가 복사한 마지막 다섯 개의 문자열을 저장하는 커스텀 컬렉션 객체를 만듬.

class RecentList {
    var slot1: String?
    var slot2: String?
    var slot3: String?
    var slot4: String?
    var slot5: String?
    
    /// 각 slot을 하나씩 아래로 이동
    /// - Parameter recent: recent slot
    func add(recent: String) {
        slot5 = slot4
        slot4 = slot3
        slot5 = slot2
        slot2 = slot1
        slot1 = recent
    }
    
    /// slot에 있는 문자열 반환해주는 함수
    /// - Returns: slot에 있는 문자열 반환
    func getAll() -> [String] {
        var recent = [String]()
        
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

let recentlyCopiedList = RecentList()
recentlyCopiedList.add(recent: "First")
recentlyCopiedList.add(recent: "Next")
recentlyCopiedList.add(recent: "Last")

var recentlyCopied = recentlyCopiedList.getAll()
print(recentlyCopied)
