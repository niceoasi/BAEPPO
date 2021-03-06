//
//  MapAPI.swift
//  BAEPPO
//
//  Created by Ethan on 2021/03/06.
//

import Foundation
import Moya

enum MapAPI {
    case sample
}

extension MapAPI: TargetType {

    var sampleData: Data { Data() }
    var headers: [String : String]? { ["accept": "application/json", "Content-Type": "application/json"] }
    var baseURL: URL { URL(string: "\(Network.baseURL)/map")! }
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

