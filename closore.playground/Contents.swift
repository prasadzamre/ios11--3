//: Playground - noun: a place where people can play

import UIKit
//////// passing a funtion to another function
func calculator(n1 : Int, n2 : Int, operation:(Int , Int) -> Int) -> Int{
   return operation(n1,n2)
}


func add (n01 : Int ,n02 : Int)->Int {
    return n01 + n02
}
func multiply (n01 : Int ,n02 : Int)->Int {
    return n01 * n02
}

// closures

//{ (n01 : Int ,n02 : Int)->Int in
//return n01 * n02
//}




//calculator(n1: 2, n2: 3, operation: multiply)

//calling closures

calculator(n1: 2, n2: 3, operation: { (n01  ,n02 ) in n01 * n02})
// cut down clousers
let result = calculator(n1: 2, n2: 3, operation: { ($0 * $1 ) })
print(result)

// trailing clousers

calculator(n1: 2, n2: 3, operation: { $0 * $1})
