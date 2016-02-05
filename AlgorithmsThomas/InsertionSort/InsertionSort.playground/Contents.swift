//: Playground - noun: a place where people can play

//Created by Luis Arias

import UIKit

func insertionSort(var array: [Int]) -> [Int]{
    for index in 1..<array.count{
//    for var j = 1; j < array.count; j++ {

        let key = array[index]
        var i = index - 1
        
        while i >= 0 && array[i] > key{
            array[i + 1] = array[i]
            i = i - 1
        }
        array[i + 1] = key
    }
    return array;
}

insertionSort([6, 2, 4, 5, 1, 3])

//[1, 2, 3, 4, 5, 6]
