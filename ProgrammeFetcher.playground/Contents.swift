import UIKit

enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}


class ProgrammeFetcher {
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgrammeName(forCHannel channel: Channel, resultHandler: (String?, Error?) -> Void) {
        // ... work
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchNextProgrammeName(forCHannel channnel: Channel, resultHandler:(String?, Error?) -> Void) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgrammeFetcher()
fetcher.fetchNextProgrammeName(forCHannel: .BBC1, resultHandler: { programmeName, error in
    print(programmeName ?? "N/A")})
