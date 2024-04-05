



import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)


enum ResponseError: Error {
    case requestunSuccessful
    case unexpectedResponseStructure
}


func fetchRepo(forUserName username: String, completionHandler: @escaping([[String:Any]]?, Error?) -> Void) {
    
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { data, response, error in
        
        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
            print(error ?? "Network Error")
            completionHandler(nil, ResponseError.requestunSuccessful)
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
            completionHandler(nil, error)
            print(error)
        }
    }
    
    task.resume()
}

fetchRepo(forUserName: "iOS-Ruel") { repos, error in
    if let repos = repos {
        print("repos: \(repos)")
    } else {
        print(error as Any)
//    print("error: \(error as Any)")
    }
}