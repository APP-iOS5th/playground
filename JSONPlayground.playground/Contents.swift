import Foundation
import PlaygroundSupport

// 응답하기 전에 실행이 끝나는 것을 방지하기 위해
PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

func fetchRepo(forUsername username: String) {
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
            return
        }
        
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
            guard let repos = deserialized as? [[String: Any]] else {
                print("Unexpected Response")
                return
            }
            
            print(repos)
            
        } catch {
            print(error)
        }
    }
    
    task.resume()
}

fetchRepo(forUsername: "canadaprogrammer")
