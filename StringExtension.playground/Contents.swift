import UIKit

extension String {
//    func firstWord() -> String {
//        let spaceIndex = firstIndex(of: " ") ?? endIndex
//        let word = prefix(upTo: spaceIndex)
//        return String(word)
//    }
    var firstWord: String {
        let spaceIndex = firstIndex(of: " ") ?? endIndex
        let word = prefix(upTo: spaceIndex)
        return String(word)
    }
}

/*
 
 firstIndex(of: " ")는 문자열에서 첫 번째 공백 문자의 위치를 찾습니다. 만약 공백 문자가 없다면, endIndex (문자열의 끝)를 반환합니다. 이는 옵셔널 체이닝을 통해 처리되며, 공백 문자가 없는 경우에 대비해 ?? 연산자를 사용하여 endIndex를 기본값으로 제공합니다.
 prefix(upTo: spaceIndex)는 문자열의 시작부터 spaceIndex까지의 부분 문자열을 추출합니다. 이는 첫 번째 단어 혹은 공백이 나타나기 전까지의 모든 문자를 포함합니다.
 */

let llap = "Live long, and prosper"
let firstWord = llap.firstWord    // String 객체에 사용할 수 있는 메소드 혹은 계산된 프로퍼티를 새로 만듬.
print(firstWord)
