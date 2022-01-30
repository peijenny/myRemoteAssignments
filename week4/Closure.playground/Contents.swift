
// Closure: Int -> Bool

var myClosure = { (num: Int) -> Bool in
    return num % 2 == 1     // 判斷數字是否為奇數
}

myClosure(5)   //結果 true
myClosure(6)   //結果 false

