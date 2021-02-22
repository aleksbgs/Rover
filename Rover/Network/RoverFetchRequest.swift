//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import Foundation
import Alamofire



class RoverFetchRequest: ObservableObject {
    
    @Published var allRoverData:[Photos] = []
   
    init() {
        getCurrentData()
    }

    func getCurrentData(){
        
        let params:[String:String] = [
            "sol":"100",
            "api_key" : "sPH2Ew3Ve2ryZaqGQ5bfk9OGUWvNDwqp5kbYu8yW"
        ]
    
        let basicUrl = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?"
    
        AF.request(basicUrl,method: .get, parameters: params)
            .responseDecodable(of: BaseModel.self) { response in
                guard let rovers = response.value else { return }
                 
                for rover in rovers.photos! {
                    self.allRoverData.append(rover)
                 }
               
       }
    }
}
