//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


1)
*/

func findTheMissingNumber(N: Int, list: [Int]) -> Int {
    list.sort({$0 < $1})
    var j = 0
    var missingNum = 0
    
    for i in (0..<list.count) {
        j = i + 1
        if(j - 1 != 1) {
            missingNum = i+1
        }
    }
    return missingNum
}

//2)

func areThereDuplicates(list: [Int]) -> Bool {
    
    let sortedList = list.sort({$0 < $1})
    
    for i in 0...sortedList.count {
        if sortedList[i] == sortedList[i + 1] {
            return true
        } else if sortedList[i + 1] >= sortedList.count {
            break
        }
    }
    
    return false
}


//3)


func getSmallestCommmonValue(list1: [Int], list2: [Int]) -> Int? {
    var combinedList : [Int] = []
    combinedList.appendContentsOf(list1)
    combinedList.appendContentsOf(list2)
    
    let sortedCombinedList = combinedList.sort({$0 < $1})
    
    for i in sortedCombinedList.first!...sortedCombinedList.count {
        if sortedCombinedList[i] == sortedCombinedList[i + 1] {
            return sortedCombinedList[i]
        }
        
    }
    return nil
}

//4)

func isPalindrome(num: Int) -> Bool {
    
    var arr: [Int] = []
    
    arr.map(num)

    var reverseArr : [Int] = []
    
    for i in arr {
        if i % 10 == 0 {
           reverseArr.insert(i, atIndex: 0)
        }
    }
    
    print(reverseArr)
    
    return true
    
}
