 /*
//FoundationPlayground

import Foundation
func howLongUntilChristmas() -> String {
    let calendar = Calendar.current //현재 사용하는 캘린더 정보
    let timeZone = TimeZone.current //우리가 사는곳에 시간 정보

    let now = Date() //현재 시간
    let yearOfNextChristmas = calendar.component(.year, from: now) //캘린더를 기준으로 현재 시간을 가져오는건가?

    var component = DateComponents(calendar: calendar, //dic 같은 느낌
                                   timeZone: timeZone,
                                   year: yearOfNextChristmas,
                                   month: 12,
                                   day:25,
                                   hour:0,
                                   minute: 0,
                                   second: 0)

    var christmas = component.date! // 날짜를 가져왔는데
    if christmas < now { // 크리스마스가 지났다면 1년뒤
        component.year = yearOfNextChristmas + 1
        christmas = component.date!
    }
    let componentFormatter = DateComponentsFormatter() //날짜구성요소들을 ...네..?

    componentFormatter.unitsStyle = .short//축약 x .full 스펠링을.. short도 가능하네!
    componentFormatter.allowedUnits = [.month, .day, .hour, .minute, .second]

    return componentFormatter.string(from: now, to: christmas)!
}

let timeUntilChristmas = howLongUntilChristmas()
print("Time until Christmas; \(timeUntilChristmas)")

//----------------------------------------------------------------------
//URLSessionPlayground

import Foundation
import PlaygroundSupport
import UIKit

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "https://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let task = session.dataTask(with: request, completionHandler:  { (data, response, error) in //선언부, 실행x
    guard let imageData = data else {
        return
    }
    _ = UIImage(data: imageData)
})

task.resume()

//----------------------------------------------------------------------
// JSONPlayground

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true //속도가 느릴때 쓰는거랄까.. 응답이 느리면 안될수도 있어서 적어주는거

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

func fetchRepo(forUsername username: String) { // 2. 실행구문 들어와서
    let urlString = "https://api.github.com/users/\(username)/repos" // 3. id 들어가고
    let url = URL(string: urlString)!
    var request = URLRequest(url: url) // 4 만들어서
    
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept") //5 호출
    
    let task = session.dataTask(with: request) { (data, response, error) in // 6 불러와서
        defer {
            PlaygroundPage.current.finishExecution() // 응답이 왔을떄.. 종료.. 머시기 저시기..
        }
        guard let jsonData = data else { // 7
            print(error ?? "Network Error")
            return
        }
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: []) // 8
            print(deserialized) //json 파싱 결과
            
            guard let repos = deserialized as? [[String: Any]] else { // 파싱한걸 이중배열로 9
                print("Unexpected Response") //실패하면
                return
            }
            print(repos)
        } catch {
            print(error)
        }
    }
    task.resume()
}

fetchRepo(forUsername: "ksiomng0929") //1. 실행하면

// JSONPlayground 수정

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

enum ResponseError: Error {
    case requestUnsucessful
    case unexpectedResponseStructure
}

func fetchRepo(forUsername username: String,
               completionHandler: @escaping ([[String: Any]]?, Error?) -> Void) {
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    var request = URLRequest(url: url)
    
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { (data, response, error) in

        defer {
            PlaygroundPage.current.finishExecution()
        }
        
        guard let jsonData = data else {
            completionHandler(nil, ResponseError.requestUnsucessful)
            return
        }
        
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
            guard let repos = deserialized as? [[String: Any]] else {
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

fetchRepo(forUsername: "APP-iOS5th") { (repos, error) in
    if let repos = repos {
        print(repos)
    } else {
        print(error as Any)
    }
}
*/
// feedly / 서핏
