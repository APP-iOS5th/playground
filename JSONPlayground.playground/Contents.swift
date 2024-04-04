import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError: Error {
    case requestUnSuccessful
    case unexpectedResponseStructure
    
}

func fetchRepo(forUsername username: String, completionHandler: @escaping ([[String: Any]]?, Error?) -> Void) {
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { (data, response, error) in
        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
            completionHandler(nil, ResponseError.requestUnSuccessful)
            return
        }
        
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            
            guard let repos = deserialized as? [[String: Any]] else {
                print("ERROR while deserialized >> Unexpected Response!")
                completionHandler(nil, ResponseError.unexpectedResponseStructure)
                return
            }
            
            completionHandler(repos, nil)
            
        } catch {
            completionHandler(nil, error)
        }
    }
    
    task.resume()
}

fetchRepo(forUsername: "madcow95") { (repos, err) in
    if let error = err {
        print("error >> \(error)")
        return
    }
    
    if let repos = repos {
        print("repos >> \(repos)")
    }
}
