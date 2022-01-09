// 1. 定義一個變數 Pi 以及賦予值給它
let Pi: Double = 3.1415  // var 變數; let 常數 -> Pi 是一個固定的值，因此使用 let 來宣告


// 2. 創建兩個 Int 的常數 x, y 並給其值，接著計算 x, y 的平均，並將結果放入名為 average 的常數中
let x = 87
let y = 44
//let average = (x + y) / 2


// 3. 承接題 2，將值保存至系統，但系統不接受 65 ，是要 65.0
// 方法1 -> average * 1.0
var average = Double((x + y) / 2)
average *= 1.0

// 方法2 -> rounded()
average.rounded()


// 4. 請寫出下列變數的型態
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Float = 86.8


// 5. 建立 salary 值為 22000，使用複合賦值運算符將 salary 加上 28000
var salary = 22000
salary += 28000
print(salary)  //50000


// 7. 請宣告兩個常數，值為 10 & 3，並計算出餘數，放入名為 remainder 的常數中
let m = 10
let n = 3
let remainder = m % n  // % 為餘數符號

