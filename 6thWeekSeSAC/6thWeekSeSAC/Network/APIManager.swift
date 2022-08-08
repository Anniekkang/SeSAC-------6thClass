//
//  APIManager.swift
//  6thWeekSeSAC
//
//  Created by 나리강 on 2022/08/08.
//

import Foundation

import Alamofire
import SwiftyJSON

class APIManager {
    
    static let shared =  APIManager()
    
    private init(){
}
    
    let header : HTTPHeaders = ["Authorization" : "KakaoAK \(APIKey.kakao)"]
    
    func callRequest(type: Endpoint,query : String, completionHandler : @escaping (JSON) -> () ){
        print(#function)
        let query = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let url = type.requestURL + query
      
        
        
        //Alamofire -> URLSession Framework -> 비동기로 request(안쪽에 코드 들어있어서 알아서 바뀜, 순서보장이 안됨)
        AF.request(url, method: .get, headers: header).validate(statusCode: 200...500).responseData { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
               // print("JSON: \(json)")
        
               completionHandler(json)
                
            case .failure(let error):
                print(error)
            }
    
    
    

    }

}
    
}
