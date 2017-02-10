//
//  SampleModel.swift
//  rxmvvm
//
//  Created by Arfaa Shariff on 10/02/17.
//
//

import Foundation
import RxCocoa
import RxSwift
import Moya

final class SampleModel {
    
    private let provider = RxMoyaProvider<RestApi>()
    
    func getPosts() -> Observable<[Post]> {
        return provider.request(.getDetails)
            .filterSuccessfulStatusCodes()
            .mapJSON()
            .mapArray(type: Post.self)
    }

}
