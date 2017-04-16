//: Playground - noun: a place where people can play

import UIKit

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "下标越界")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "下标越界")
            grid[(row * columns) + column] = newValue
        }
    }
    
    func toString() {
        for i in 0..<rows {
            for j in 0..<columns{
                print("\(self[i,j])",terminator:",")
            }
            print("")
        }
    }
}
var matrix = Matrix(rows: 2, columns: 3)
matrix[0,0] = 1.0
matrix[0,1] = 2.0
matrix[1,1] = 3.0
matrix[1,2] = 4.0
//matrix[2,3] = 5.0 报错，下标越界
matrix.toString()
