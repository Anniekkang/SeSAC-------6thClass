//
//  URL+Extension.swift
//  6thWeekSeSAC
//
//  Created by 나리강 on 2022/08/08.
//

import Foundation

extension URL {
    
    static let baseURL = "https://dapi.kakao.com/v2/search/"
    
    static func makeEndPointString(_ endpoint : String) -> String {
        return baseURL + endpoint
    }
    
}


