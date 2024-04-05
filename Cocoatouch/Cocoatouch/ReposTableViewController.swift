//
//  ReposTableViewController.swift
//  Cocoatouch
//
//  Created by 정종원 on 4/4/24.
//

import UIKit
import SafariServices

enum FetchReposResult {
    case success([Repo])
    case failure(Error)
}

enum ResponseError: Error {
    case requestUnsuccessful
    case enexpectedResponseStructure
}

struct Repo: Codable {
    let name: String?
    let url: URL?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "html_url"
    }
}

class ReposTableViewController: UITableViewController {
    
    //Properties
    internal var session = URLSession.shared
    internal var repos = [Repo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Repos"
        
        fetchRepos(forUsername: "jjwon2149") { [weak self] result in
            switch result {
            case .success(let repos):
                self?.repos = repos
            case .failure(let error):
                self?.repos = []
                print("there was an error: \(error)")
            }
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
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
        
        guard let repoURL = repo.url else { return }
        
        let webViewController = SFSafariViewController(url: repoURL)
        show(webViewController, sender: nil)
    }
    
}

extension ReposTableViewController: UITextFieldDelegate{
    
    //textFieldShouldReturn가 메인쓰레드에서 동작해서 weak self사용 X
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard let enteredUsername = textField.text else {
            repos = []
            tableView.reloadData()
            return true

        }
        
        fetchRepos(forUsername: enteredUsername) { [weak self] result in
            
            switch result {
            case .success(let repos):
                self?.repos = repos
            case .failure(let error):
                self?.repos = []
                print("there was an error: \(error)")
            }
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        //포커스 잃어버리는 메소드
        textField.resignFirstResponder()
        
        return true
    }
}
