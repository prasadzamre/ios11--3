//
//  SelfDrivingCar.swift
//  Claase and Object
//
//  Created by Prasad Zamre on 10/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import Foundation

class SelfDrivingCar :  Car{
    
    var destination : String?
    
    override func drive() {
       super.drive()
        
        if let userSetDestination = destination {
        print("Driving to Destination:-   " + userSetDestination)
        }
    }
    
}
