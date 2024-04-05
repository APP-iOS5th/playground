//
//  CocoaTouchTests.swift
//  CocoaTouchTests
//
//  Created by Chung Wussup on 4/4/24.
//

import XCTest
@testable import CocoaTouch

class MockURLSession: URLSession {
    override func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return MockURLSessionDataTask(completionHandler: completionHandler, request: request)
    }
}

class MockURLSessionDataTask: URLSessionDataTask {
    
    var completionHandler: (Data?, URLResponse?, Error?) -> Void
    var request: URLRequest
    
    init(completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void, request: URLRequest) {
        self.completionHandler = completionHandler
        self.request = request
        super.init()
    }
    
    var calledResume = false
    
    override func resume() {
        calledResume = true
    }
    
}


final class CocoaTouchTests: XCTestCase {

    var viewControllerUnderTest: ReposTableViewController?
    
    //변수 선언 ( 셋팅 초기화)
    override func setUp() {
        super.setUp()
        viewControllerUnderTest = ReposTableViewController()
        
    }
    
    // 테스트가 종료될때 데이터를 지우는 등에 대한 메서드
    override func tearDown() {
        viewControllerUnderTest = nil
        super.tearDown()
    }
    
    func testThatRepoIsNotNill() {
        XCTAssertNotNil(viewControllerUnderTest?.repos)
    }
    

    var mockData: Data {
        if let path = Bundle.main.path(forResource: "mock_Data", ofType: "json"), let contents = FileManager.default.contents(atPath: path) {
            
            print(contents)
            return contents
        }
        
        return Data()
    }
    
    
    func testThatFetchRepoRarseeSuccessfulData() {
        viewControllerUnderTest?.session = MockURLSession()
        
        var responseObject: FetchReposResult?
        
        let result = viewControllerUnderTest?.fetchRepos(forUsername: "ios-ruel", completionHandler: { response in
            responseObject = response
        }) as? MockURLSessionDataTask
        
        result?.completionHandler(mockData, nil, nil)
        
        switch responseObject {
        case .success(let repos):
            XCTAssertEqual(repos.count, 9)
            XCTAssertEqual(repos.first?.name, "aerogear-ios-oauth2")
        case .failure(let error):
            print("--> \(error)")
            
        default:
            XCTFail()
        }
        
    }
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
