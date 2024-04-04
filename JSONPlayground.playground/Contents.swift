import Foundation
import PlaygroundSupport


PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError {
    case requestunSucessful
    case unexpectedResponseStructure
}

func fetchRepo(forUserName userName: String,
               completionHandler: @escaping ([[String:Any]]?, Error?) -> Void) {
    let urlString = "https://api.github.com/users/\(userName)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField:"Accept")
    
    let task = session.dataTask(with: request) {(data,response,error) in
        
        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
//            에러 처리
            completionHandler(nil, ResponseError.requestunSucessful as? Error)
            return
        }
        
        do{
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
            guard let repos = deserialized as? [[String: Any]] else {
                completionHandler(nil, ResponseError.unexpectedResponseStructure as? Error)
                return
            }
            
            completionHandler(repos,nil)
            
            
        }catch{
            completionHandler(nil, error)
        }
    }
    
    task.resume()
}

fetchRepo(forUserName: "SeongKookKIM") {(repos, error) in
    if let repos = repos {
        print("repos: \(repos)")
    } else {
        print(("error: \(String(describing: error))"))
    }
}
