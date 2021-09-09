//
//  main.swift
//  FibonacciNumbers
//
//  Created by Ömer Köse on 6.09.2021.
//

import Foundation

// This function calculates the ffibonacci sequence till 1000 and prints out.
func fibonacciSequence(_ n: Int) -> () {
    
    // Fibonacci array to store fibonacci numbers till 1000
    var fibonacciArray = [Int]()
    // Small fibonacci array to store fibonacci numbers between 750 and 1000
    var smallFibonacciArray = [Int]()
    
    //Mathematical calculation of the fibonacci numbers, calculate the sequence by formula; F(n) = F(n-1) + F(n-2)
    for n in 0...n {
        if n == 0 || n == 1 {
            fibonacciArray.append(n)
        } else {
            // Calculate the new element using the fibonacci formula
            let newElement = fibonacciArray[n - 1] + fibonacciArray[n - 2]
            
            // Check if the new element is bigger than 1000, if so break the loop
            if newElement > 1000{
                break
            } else if newElement > 750 {
                // If element is bigger than 750 also append it to the smallFibonacciArray
                smallFibonacciArray.append(newElement)
            }
            // Append the new element into the fibonacciArray
            fibonacciArray.append(newElement)
        }
    }
    
    // Print out the full fibonacci array
    print("Fibonacci array until 1000: ", terminator: "")
    for items in fibonacciArray {
        if items == fibonacciArray.last {
            print(items, terminator: "\n")
            break
        } else {
            print(items, terminator: " ")
        }
    }
    
    // Print the requested array
    print("Fibonacci numbers between 750 and 1000: ", terminator: "")
    for items in smallFibonacciArray {
        print(items)
    }
}

fibonacciSequence(20)





