import Foundation
<<<<<<< HEAD
import PlaygroundSupport
import UIKit
=======
import UIKit
import PlaygroundSupport
>>>>>>> main

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "https://imgs.xkcd.com/comics/api.png"
<<<<<<< HEAD
// URL 객체가 옵셔널이어서 ! 로 언랩핑해줘야 한다
=======
>>>>>>> main
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
<<<<<<< HEAD
    guard let imageData = data else { return }
    
=======
    guard let imageData = data else {
        return
    }
>>>>>>> main
    _ = UIImage(data: imageData)
})

task.resume()
