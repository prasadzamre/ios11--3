//
//  File.swift
//  Claase and Object
//
//  Created by Prasad Zamre on 10/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import Foundation

enum CarType{
    case Sedan
    case Coupe
    case Hatchcatch
}

class Car {
 
    var color  : String = "Black"
    var noOfSeats : Int = 5
    var typeOfcar : CarType = .Coupe
    
    
    init() {
 
    }
    convenience init (customerChosenColor : String){
        self.init()
        color = customerChosenColor
    }
    
    func drive(){
        print("car is moving")
    }
    
}
