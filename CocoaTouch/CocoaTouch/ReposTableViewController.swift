//
//  ReposTableViewController.swift
//  CocoaTouch
//
<<<<<<< HEAD
//  Created by Jungjin Park on 2024-04-04.
=======
//  Created by Jungman Bae on 4/5/24.
>>>>>>> main
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
<<<<<<< HEAD
=======

>>>>>>> main
enum FetchReposResult {
    case success([Repo])
    case failure(Error)
}

enum ResponseError: Error {
    case requestUnsuccessful
<<<<<<< HEAD
    case unexpectedResponseStructure
}

class ReposTableViewController: UITableViewController {

    // 공유할 수 있는 세션
=======
    case enexpectedResponseStructure
}

class ReposTableViewController: UITableViewController {
    
>>>>>>> main
    internal var session = URLSession.shared
    internal var repos = [Repo]()
    
    @discardableResult
<<<<<<< HEAD
    internal func fetchRepos(forUsername username: String, completionHandler: @escaping (FetchReposResult) -> Void) -> URLSessionDataTask? {
=======
    internal func fetchRepos(forUsername username: String,
                             completionHandler: @escaping (FetchReposResult) -> Void) -> URLSessionDataTask? {
>>>>>>> main
        
        let urlString = "https://api.github.com/users/\(username)/repos"
        guard let url = URL(string: urlString) else {
            return nil
        }
        var request = URLRequest(url: url)
<<<<<<< HEAD
        request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
        let task = session.dataTask(with: request) { (data, response, error) in
=======
        request.setValue("application/vnd.github.v3+json",
                         forHTTPHeaderField: "Accept")
        let task = session.dataTask(with: request) { (data,
                                                      response, error) in
>>>>>>> main
            
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
<<<<<<< HEAD

        return task
=======
        
        return task
        
>>>>>>> main
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD

        self.title = "Repos"
        
        // 비동기 구문으로 시차가 있어서 그 때 존재하지 않을 수 있는 위험이 있어서 weak 약한 참조를 사용
        // 주소지에 존재하지 않으면 실행하지 않는다
=======
        
        self.title = "Repos"
        
>>>>>>> main
        fetchRepos(forUsername: "APP-iOS5th") { [weak self] result in
            switch result {
            case .success(let repos):
                self?.repos = repos
            case .failure(let error):
<<<<<<< HEAD
                self?.repos = []
                print("There was an error: \(error)")
            }
            // 메인 흐름에 잠시 끼워준다?
=======
                self?.repos =  []
                print("There was an error: \(error)")
            }
>>>>>>> main
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
<<<<<<< HEAD

    }

    // MARK: - Table view data source

=======
    }
    
    // MARK: - Table view data source
    
>>>>>>> main
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
<<<<<<< HEAD

=======
    
>>>>>>> main
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return repos.count
    }
<<<<<<< HEAD

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath)

        let repo = repos[indexPath.row]
        cell.textLabel?.text = repo.name

        return cell
    }

=======
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath)
        
        let repo = repos[indexPath.row]
        cell.textLabel?.text = repo.name
        
        return cell
    }
    
>>>>>>> main
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let repo = repos[indexPath.row]
        guard let repoURL = repo.url else { return }
        
        let webViewController = SFSafariViewController(url: repoURL)
        show(webViewController, sender: nil)
    }
<<<<<<< HEAD
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

extension ReposTableViewController: UITextFieldDelegate {
    
=======
    
    
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

extension ReposTableViewController: UITextFieldDelegate {
>>>>>>> main
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
<<<<<<< HEAD
                self?.repos = []
=======
                self?.repos =  []
>>>>>>> main
                print("There was an error: \(error)")
            }
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
<<<<<<< HEAD
        // 키보드가 내려가는 액션
        textField.resignFirstResponder()
=======
        
        textField.resignFirstResponder()
        
>>>>>>> main
        return true
    }
}
