import UIKit
import PlaygroundSupport

//MARK: - JSON URLSession

//Foundation 과 PlaygroundSupport 를 임포트하고, 놀이터에서 무기한 실행을 설정합니다.
//URLSessionConfiguration.default 를 사용하여 URLSession 인스턴스를 생성합니다
PlaygroundPage.current.needsIndefiniteExecution = true
let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError: Error {
    case requestUnsuccessful
    case unexpectedResponseStructure
}

//주어진 사용자명에 대한 모든 공개 저장소를 가져오는 함수를 생성합니다.
//URLRequest 를 생성하고, GitHub API 버전 3의 헤더를 설정합니다.
func fetchRepos(forUsername username: String, completionHandler: @escaping ([[String: Any]]?, Error?) -> Void) {
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    request.setValue("application/vnd.github.v3+json"
                     , forHTTPHeaderField: "Accept")
    
    // 데이터 태스크 및 실행
    //JSONSerialization 을 사용하여 JSON 응답 데이터를 유용한 형태로 변환합니다.
    let task = session.dataTask(with: request) { (data, response, error) in
        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
            print(error ?? "Network Error")
            completionHandler(nil, ResponseError.requestUnsuccessful)
            return
        }
        
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
            guard let repos = deserialized as? [[String: Any]] else {
                print("Unexpected Response")
                completionHandler(nil, ResponseError.unexpectedResponseStructure)
                return
            }
            
            print(repos)
            completionHandler(repos, nil)
            
        } catch {
            print(error)
            completionHandler(nil, error)
        }
        
    }
    task.resume()
}

fetchRepos(forUsername: "jjwon2149") { (repos, error) in
    if let repo = repos {
        print("repos : \(repo)")
    } else {
        print("error: \(error as Any)")
    }
    
}


//저장소명, 사용자명, 제목, 본문을 입력으로 받아 GitHub 저장소에 이슈를 생성하는 함수를 정의합
//니다.
//JSONSerialization 을 사용하여 요청 본문을 JSON 형태로 직렬화합니다.
func createIssue(inRepo repo: String, forUser user: String, title: String, body: String?, completionHandler: @escaping ([String: Any]?, Error?) -> Void) {
    let urlString = "https://api.github.com/repos/\(user)/\(repo)/issues"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    // 헤더 및 JSON 본문 설정
    // 데이터 태스크 및 실행
}
