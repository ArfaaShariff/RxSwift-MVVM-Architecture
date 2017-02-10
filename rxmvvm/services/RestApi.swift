//
//  SampleService.swift
//  rxmvvm
//
//  Created by Arfaa Shariff on 10/02/17.
//
//

import Foundation
import Moya
import RxSwift
import Alamofire


enum MyService {
    case showDetails
}

extension MyService: TargetType {
    //dummy url to get json
    public var baseURL: URL { return URL(string: "http://jsonplaceholder.typicode.com")! }
    
    var path: String {
        switch self {
        case .showDetails:
            return "/posts"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .showDetails:
            return .get
            
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .showDetails:
            return nil
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .showDetails:
            return URLEncoding.default 
            
        }
    }
    
    var sampleData: Data {
        switch self {
        case .showDetails:
            return "[{\"userId\": \"1\", \"Title\": \"Title String\", \"Body\": \"Body String\"}]".data(using: String.Encoding.utf8)!
        }
    }
    
    var task: Task {
        return .request
    }
    
}
