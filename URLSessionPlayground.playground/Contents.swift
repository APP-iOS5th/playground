import Foundation
import UIKit
import PlaygroundSupport //화면 구성을 위한 라이브러리


PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlStreing = "https://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlStreing)! //받는사람 주소, URL객체는 옵셔널이여서 언래핑해줘야함
let request = URLRequest(url: url) //요청

let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
    guard let imageData = data else {
        return
    }
    _ = UIImage(data: imageData)
})

task.resume()
