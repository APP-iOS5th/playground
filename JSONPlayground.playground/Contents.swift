import Foundation
import PlaygroundSupport

<<<<<<< HEAD
// 응답하기 전에 실행이 끝나는 것을 방지하기 위해
=======
>>>>>>> main
PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError: Error {
<<<<<<< HEAD
    case requestUnsuccessful
    case unexpectedResponseStructure
}
func fetchRepo(forUsername username: String, completionHandler: @escaping ([[String: Any]]?, Error?) -> Void) {
=======
    case requestUnsucessful
    case unexpectedResponseStructure
}

func fetchRepo(forUsername username: String,
               completionHandler: @escaping ([[String: Any]]?, Error?) -> Void) {
>>>>>>> main
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { (data, response, error) in
<<<<<<< HEAD
        
        // 응답이 왔을 때 실행을 종료하기 위해
=======

>>>>>>> main
        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
<<<<<<< HEAD
            print(error ?? "Network Error")
            completionHandler(nil, ResponseError.requestUnsuccessful)
=======
            completionHandler(nil, ResponseError.requestUnsucessful)
>>>>>>> main
            return
        }
        
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
            guard let repos = deserialized as? [[String: Any]] else {
<<<<<<< HEAD
                print("Unexpected Response")
=======
>>>>>>> main
                completionHandler(nil, ResponseError.unexpectedResponseStructure)
                return
            }
            
<<<<<<< HEAD
//            print(repos)
            completionHandler(repos, nil)
            
        } catch {
//            print(error)
            completionHandler(nil, error)
        }
=======
            completionHandler(repos, nil)
    
        } catch {
            completionHandler(nil, error)
        }

>>>>>>> main
    }
    
    task.resume()
}

<<<<<<< HEAD
//fetchRepo(forUsername: "canadaprogrammer")
=======
>>>>>>> main
fetchRepo(forUsername: "APP-iOS5th") { (repos, error) in
    if let repos = repos {
        print(repos)
    } else {    
        print(error as Any)
    }
}
