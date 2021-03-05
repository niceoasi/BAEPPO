//
//  UserAPI.swift
//  BAEPPO
//
//  Created by Ethan on 2021/03/06.
//

import Foundation
import Moya

enum UserAPI {
    case sample
}

extension UserAPI: TargetType {

    var sampleData: Data { Data() }
    var headers: [String : String]? { ["accept": "application/json", "Content-Type": "application/json"] }
    var baseURL: URL { URL(string: "\(Network.baseURL)/user")! }
    var path: String { "/" }

    var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }

    var task: Task {
        switch self {
        default:
            return .requestPlain
        }
    }

}
