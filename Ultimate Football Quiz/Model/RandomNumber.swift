//
//  RandomNumber.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 18/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation

func generateRandomNumber(_ from:Int, _ to:Int, _ qut:Int?) -> [Int]
{
    var myRandomNumbers = [Int]() //All our generated numbers
    var numberOfNumbers = qut //How many numbers to generate
    
    let lower = UInt32(from) //Generate from this number..
    let higher = UInt32(to+1) //To this one

    if numberOfNumbers == nil || numberOfNumbers! > (to-from) + 1
    {
        numberOfNumbers = (to-from) + 1
    }
    
    while myRandomNumbers.count != numberOfNumbers
    {
        let myNumber = arc4random_uniform(higher - lower) + lower
        
        if !myRandomNumbers.contains(Int(myNumber))
        {
            myRandomNumbers.append(Int(myNumber))
        }
    }
    
    return myRandomNumbers
}
