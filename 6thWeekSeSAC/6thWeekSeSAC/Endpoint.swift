//
//  Endpoint.swift
//  6thWeekSeSAC
//
//  Created by 나리강 on 2022/08/08.
//

import UIKit

enum Endpoint {
    case blog
    case cafe
    //저장프로퍼티 못쓰는 이유 ? 초기화가 안되기 때문
    var requestURL : String {
        switch self {
        case .blog:
            return URL.makeEndPointString("blog?query=")//사용자 입력값 query
        case .cafe:
            return URL.makeEndPointString("Cafe?query=")
        }
        
    }
}
