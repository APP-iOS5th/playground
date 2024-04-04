import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError: Error {
    case requestUnsuccessful
    case unexpectedResponseStructure
}

func fetchRepo(forUsername username:String,
               completionHandler: @escaping([[String: Any]]?, Error?) -> Void) {
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    
    // header에 적용
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { (data, response, error) in
        
        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
            // 요청 에러
//            print(error ?? "Network Error")
            completionHandler(nil, ResponseError.requestUnsuccessful)
            
            return
        }
        
        do {
            // 가져온 데이터를 json 형태로
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
            // as?(다운캐스팅): deserialized 타입을 [[String: Any]](딕셔너리 배열의 배열)로 다운캐스팅
            guard let repos = deserialized as? [[String: Any]] else { // 실행 구문이기 때문에 generic이 아닌 any 사용
                // 응답 에러
//                print("Unexpected Response")
                completionHandler(nil, ResponseError.unexpectedResponseStructure)
                
                return
            }
//            print(repos)
            completionHandler(repos, nil)
            
        } catch {
            print(error)
            
        }
    }
    
    task.resume()
}

//fetchRepo(forUsername: "jihyeep")
fetchRepo(forUsername: "APP-iOS5th") { (repos, error) in
    if let repos = repos {
//        print("repos: \(repos)") // error
        print(repos)
    } else {
//        print("error: \(error ?? "")") // error
        print(error as Any) // Any 타입으로 타입캐스팅
    }
}
