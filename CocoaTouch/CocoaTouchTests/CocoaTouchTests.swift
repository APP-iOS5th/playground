//
//  CocoaTouchTests.swift
//  CocoaTouchTests
//
//  Created by MadCow on 2024/4/4.
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
    
    override func setUp() {
        viewControllerUnderTest = ReposTableViewController()
    }
    
    override func tearDown() {
        super.tearDown()
        viewControllerUnderTest = nil
    }
    
    func testThatRepoIsNotNil() {
        XCTAssertNotNil(viewControllerUnderTest?.repos)
    }
    
    var mockData: Data {
        guard let path = Bundle.main.path(forResource: "mock_Data", ofType: "json") else {
            return Data()
        }
        print(path)
        guard let contents = FileManager.default.contents(atPath: path) else {
            return Data()
        }
        print(contents)
//        if let path = Bundle.main.path(forResource: "mock_Data", ofType: "json"), let contents = FileManager.default.contents(atPath: path) {
//            print(contents)
//            return contents
//        }
        
        return contents
    }
    
    func testThatFetchRepoParsesSuccessfulData() {
        viewControllerUnderTest?.session = MockURLSession()
        
        var responseObject: FetchReposResult?
        
        let result = viewControllerUnderTest?.fetchRepos(forUsername: "madcow95", completionHandler: { res in
            print("response > \(res)")
            responseObject = res
        }) as? MockURLSessionDataTask
        
        
        result?.completionHandler(mockData, nil, nil)
        print(mockData)
        switch responseObject {
        case .success(let repos):
            XCTAssertEqual(repos.count, 9)
            XCTAssertEqual(repos.first?.name, "aerogear-ios-oauth2")
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
