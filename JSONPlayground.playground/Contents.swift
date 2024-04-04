import Foundation
import PlaygroundSupport

// 응답하기 전에 실행이 끝나는 것을 방지하기 위해
PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError: Error {
    case requestUnsuccessful
    case unexpectedResponseStructure
}
func fetchRepo(forUsername username: String, completionHandler: @escaping ([[String: Any]]?, Error?) -> Void) {
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { (data, response, error) in
        
        // 응답이 왔을 때 실행을 종료하기 위해
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
            
//            print(repos)
            completionHandler(repos, nil)
            
        } catch {
//            print(error)
            completionHandler(nil, error)
        }
    }
    
    task.resume()
}

//fetchRepo(forUsername: "canadaprogrammer")
fetchRepo(forUsername: "APP-iOS5th") { (repos, error) in
    if let repos = repos {
        print(repos)
    } else {
        print(error as Any)
    }
}
