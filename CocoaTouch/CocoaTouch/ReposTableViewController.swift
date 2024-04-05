//
//  ReposTableViewController.swift
//  CocoaTouch
//
//  Created by Chung Wussup on 4/4/24.
//

import UIKit


struct Repo: Codable {
    let name: String?
    let url: URL?
    
    enum CodingKeys: String, CodingKey {
        case name = "url"
        case url = "html_url"
    }
}


enum FetchReposResult {
    case success([Repo])
    case failure(Error)
}


enum ResponseError: Error {
    case requestUnsuccessful
    case enexpectedResponseStructure
}

class ReposTableViewController: UITableViewController {
    internal var session = URLSession.shared
    internal var repos = [Repo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Repos"
        
        let repo1 = Repo(name: "testRepo1", url: URL(string: "https://example.com/repo1"))
        let repo2 = Repo(name: "testRepo2", url: URL(string: "https://example.com/repo2"))
        
        repos.append(contentsOf: [repo1, repo2])
    }

    @discardableResult
    internal func fetchRepos(forUsername username: String, completionHandler: @escaping (FetchReposResult) -> Void) -> URLSessionDataTask? {
        
        let urlString = "https://api.github.com/users/\(username)/repos"
        guard let url = URL(string: urlString) else {
            return nil
        }
        var request = URLRequest(url: url)
        request.setValue("application/vnd.github.v3+json",
          forHTTPHeaderField: "Accept")
        let task = session.dataTask(with: request) { (data,
          response, error) in
            
            // First unwrap the optional data
            guard let data = data else {
                completionHandler(.failure(ResponseError.requestUnsuccessful))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let responseObject = try decoder.decode([Repo].self, from: data)
                
                completionHandler(.success(responseObject))
            } catch {
                completionHandler(.failure(error))
            }
        }
        task.resume()

        return task
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return repos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath)
        let repo = repos[indexPath.row]
        cell.textLabel?.text = repo.name
        return cell
    }

}
