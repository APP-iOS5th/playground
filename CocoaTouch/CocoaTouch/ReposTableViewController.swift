//
//  ReposTableViewController.swift
//  CocoaTouch
//
//  Created by Chung Wussup on 4/4/24.
//

import UIKit
import SafariServices

struct Repo: Codable {
    let name: String?
    let url: URL?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
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
        
        self.fetchRepos(forUsername: "iOS-Ruel") {[weak self] result in
            switch result {
            case .success(let repos):
                self?.repos = repos
            case .failure(let error):
                self?.repos = []
                print("There was an error: \(error)")
            }
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        
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
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let repo = repos[indexPath.row]
        guard let repoUrl = repo.url else { return }
        let webViewController = SFSafariViewController(url: repoUrl)
//        webViewC  ontroller.modalPresentationStyle = .formSheet
//        self.present(webViewController, animated: true)
        show(webViewController, sender: nil)
    }

}

extension ReposTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let enteredUserName = textField.text else {
            repos = []
            tableView.reloadData()
            return true
        }
        
        fetchRepos(forUsername: enteredUserName) {[weak self] result in
            switch result {
            case .success(let repos):
                self?.repos = repos
            case .failure(let error):
                self?.repos = []
                print("There was an error: \(error)")
            }
            DispatchQueue.main.async {
                self?.tableView.reloadData()
                self?.title = enteredUserName
            }
        }
        
        
        textField.resignFirstResponder()
        
        return true
    }
}
