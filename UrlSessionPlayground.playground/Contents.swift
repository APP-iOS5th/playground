import Foundation
import PlaygroundSupport
import UIKit

//MARK: - Section Heading

//Foundation 프레임워크를 임포트하고, 플레이그라운드에서 무기한 실행을 설정합니다.
PlaygroundPage.current.needsIndefiniteExecution = true

//URLSessionConfiguration.default 를 사용하여 URLSession 인스턴스를 생성합니다.
let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

//원격 이미지의 URL을 사용하여 URLRequest 를 생성합니다.
let urlString = "https://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

//URLRequest 를 사용하여 URLSessionDataTask 를 생성하고 실행합니다.
let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
    guard let imageData = data else {
    return // 이미지가 없음, 에러 처리
    }
    _ = UIImage(data: imageData)
})
task.resume()

//URLSessionDataTask 는 서버의 응답을 관리하며, 완료 핸들러로 데이터, 응답, 오류를 반환합니다.
//완료 핸들러 내에서 데이터를 검증하고 필요한 작업을 수행합니다 (여기서는 이미지 데이터를 UIImage 로 변환).
//task.resume() 을 호출하여 네트워크 요청을 시작합니다.
