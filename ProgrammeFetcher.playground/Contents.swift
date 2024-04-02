import Foundation

enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammeFetcher {
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgrammeName(forChannel channel: Channel,
                                   resultHandler: FetchResultHandler) {
        // 현재 프로그램 가져오기
        let programmeName = "Sherlock"
        resultHandler(programmeName, nil)
    }
    func fetchNextProgrammeName(forChannel channel: Channel,
                                resultHandler: FetchResultHandler) {
        // 다음 프로그램 가져오기
        let programmeName = "Luther"
        resultHandler(programmeName, nil)
    }
}

let fetcher = ProgrammeFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { program, error in
    
    print(program ?? "N?A")
    
})
