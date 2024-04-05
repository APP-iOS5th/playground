//
//  ReposTableViewController.swift
//  CocoaTouch
//
//  Created by 박지혜 on 4/4/24.
//

import UIKit
import SafariServices // SFSafariViewController

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
    case unexpectedResponseStructure
}

class ReposTableViewController: UITableViewController {
    
    internal var session = URLSession.shared // 공유할 수 있는 session 설정
    internal var repos = [Repo]()
    
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
    
    // 화면이 로딩된 다음 불러오는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Repos"
        
        //        let repo1 = Repo(name: "Test Repo 1", url: URL(string: "https://example.com/repo1"))
        //        let repo2 = Repo(name: "Test Repo 2", url: URL(string: "https://example.com/repo2"))
        //
        //        repos.append(contentsOf: [repo1, repo2])
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // 비동기 실행
        fetchRepos(forUsername: "APP-iOS5th") { [weak self] result in // 약한 참조
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
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return repos.count
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    // 위 코드와 동일
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath)
        
        let repo = repos[indexPath.row] // 몇 층인지
        cell.textLabel?.text = repo.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let repo = repos[indexPath.row]
        guard let repoURL = repo.url else { return }
        
        let webViewController = SFSafariViewController(url: repoURL) // 아직까진 사파리만 가능
        show(webViewController, sender: nil)
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
