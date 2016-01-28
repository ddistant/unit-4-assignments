//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) 

*/

var sudokuBoard = [
    [5, 0, 8, 0, 7, 3, 1, 9, 0],
    [9, 0, 0, 6, 0, 0, 4, 0, 8],
    [0, 0, 0, 9, 0, 8, 0, 3, 5],
    [0, 7, 0, 0, 0, 0, 0, 6, 0],
    [0, 0, 2, 0, 0, 0, 9, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 8, 0],
    [1, 9, 0, 3, 0, 6, 0, 0, 0],
    [2, 0, 3, 0, 0, 7, 0, 0, 9],
    [0, 8, 7, 1, 9, 0, 3, 0, 4]]

func getMatrixNumbers(sudokuBoard: [[Int]], forRow rowIndex: Int, andColumn colIndex: Int) -> [Int] {
    
    var rowRangeLowerBound : Int
    var rowRangeUpperBound : Int
    var colRangeLowerBound : Int
    var colRangeUpperBound : Int
    var matrixRows = [[Int]]()
    var matrixArray = [Int]()
    
    if rowIndex <= 2 {
        rowRangeLowerBound = 0
        rowRangeUpperBound = 2
    } else if rowIndex <= 5 {
        rowRangeLowerBound = 3
        rowRangeUpperBound = 5
    } else {
        rowRangeLowerBound = 6
        rowRangeUpperBound = 8
    }
    
    for i in rowRangeLowerBound...rowRangeUpperBound {
        matrixRows.append(sudokuBoard[i])
    }
    
    if colIndex <= 2 {
        colRangeLowerBound = 0
        colRangeUpperBound = 2
    } else if colIndex <= 5 {
        colRangeLowerBound = 3
        colRangeUpperBound = 5
    } else {
        colRangeLowerBound = 6
        colRangeUpperBound = 8
    }
    
    for j in matrixRows {

        for k in colRangeLowerBound...colRangeUpperBound {
            if j[k] > 0 {
               matrixArray.append(j[k])
            }
        }
    }
    
    return matrixArray
}

func removeDuplicates(arr: [Int]) -> [Int] {
    let newSet : Set = Set(arr)
    
    let newArray = Array(newSet)
    
    return newArray
}

func getValidNumbers(sudokuBoard:[[Int]], row:Int, col:Int) -> [Int] {
    
    var rowNumbers = [Int]()
    var colNumbers = [Int]()
    var matrixNumbers = [Int]()
    var allNumbers = [Int]()
    var possibleNumbers = [1,2,3,4,5,6,7,8,9]
    
    //get all numbers in row
    
    for i in sudokuBoard[row] {
        if i > 0 {
            rowNumbers.append(i)
        }
    }
    
    //get all numbers in column
    
    for j in sudokuBoard {
        if j[col] > 0 {
            colNumbers.append(j[col])
        }
    }
    
    //get all numbers in quadrant/matrix
    
    matrixNumbers = getMatrixNumbers(sudokuBoard, forRow: row, andColumn: col)
    
    //add all numbers together
    
    allNumbers = rowNumbers + colNumbers + matrixNumbers
    
    //delete duplicates for possible sudoku answers
    
    allNumbers = removeDuplicates(allNumbers)
    
    for k in 0...allNumbers.count - 1 {
        for l in 0...possibleNumbers.count - 1 {
            if possibleNumbers[l] == allNumbers[k] {
                possibleNumbers.removeAtIndex(l)
                print(possibleNumbers)
            }
            if k >= allNumbers.count - 1 || l >= possibleNumbers.count - 1 {
                break
            }
        }
        if k >= allNumbers.count - 1 {
            break
        }
    }
    
    return possibleNumbers
}

//print(getValidNumbers(sudokuBoard, row: 0, col: 2))



/*
2) 
*/

var matrix = [[1,2,3,4],
             [5,6,7,8],
             [9,0,1,2],
             [3,4,5,6]]


func rotateMatrix(matrix: [[Int]]) -> [[Int]] {
   var resultMatrix = [[Int]]()
    
    for i in 0..<matrix.count - 1 {
        for j in 0..<matrix.count - 1 {
           resultMatrix[0].insert(matrix[j][0], atIndex: matrix.count - 1)
            print(resultMatrix)
            
            if j >= matrix.count - j - 1 {
                break
            }
        }
        
        if i >= matrix.count - 1 {
            break
        }
    }
    
    
    //n x n matrix
    //0,0 -> 0, n - 1
    //  r, c -> r,n - c - 1
    
    //0, n - 1 -> n - 1, n - 1
    //  r, c -> n -r - 1, c
    
    //m - 1, n - 1 -> n - 1,0
    //  r, c -> n -
    
    //m - 1,0 -> 0,0
    
    return resultMatrix

}

rotateMatrix(matrix)

for (i = 0; i < 10; i++) {
    //iterate through the indices of an array
    
    for i in 0..<matrix.count {
        
    }
}

for i in matrix {
    //iterate through the values in an array
}

for (i,j) in 0...matrix.count {
    
}


/*
3)

*/

//func mySort(values: [Int]) -> [Int] {
//    var left = values[0...1]
//    
//    if left[0] > left[1] {
//        let t = left[0]
//        left[0] = left[1]
//        left[1] = t
//    }
//    
//    var right = values[2...4]
//    
//    if right[0] > right[1] {
//        let t = right[0]
//        right[0] = right[1]
//        right[1] = t
//    }
//}



/*

*/
