//
//  ViewController.swift
//  Random User
//
//  Created by Prasad Zamre on 12/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    var firstName = ""
    var city = ""
    var gender = ""
    var phone = ""
    var email = ""
    
    let url = "https://randomuser.me/api"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initialData(url: url)
       
    }
    
    
    func initialData(url : String){
        Alamofire.request(url, method: .get).responseJSON {
            response in
            if response.result.isSuccess {
                
                print("Sucess! Got the Bitcoin Data")
                let testJSON : JSON = JSON(response.result.value!)
               // print(testJSON)
                self.getData(json: testJSON)
                
            } else {
                print("Error: \(String(describing: response.result.error))")
                
            }
        }
    }
    
    
    
    
    
    func getData(json : JSON){
        if let dataObtained = json["phone"]["cell"].double{
           print(dataObtained)
        }
        else{
            print("unable to perform swifty Json")
        }
        
    }

}

