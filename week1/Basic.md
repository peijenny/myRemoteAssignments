---
tags: Week1 - Remote Assignments
---
# Basic

### 1. 定義一個變數 Pi 以及賦予值給它
```
let Pi: Double = 3.1415  // var 變數; let 常數 -> Pi 是一個固定的值，因此使用 let 來宣告
```

### 2. 創建兩個 Int 的常數 x, y 並給其值，接著計算 x, y 的平均，並將結果放入名為 average 的常數中
```
let x = 87
let y = 44
let average = (x + y) / 2
```

### 3. 承接題 2，將值保存至系統，但系統不接受 65 ，是要 65.0
- 目前想到兩個方法解決，不過應該還有其他的方式。
```
// 方法1 -> average * 1.0
var average = Double((x + y) / 2)
average *= 1.0
```
```
// 方法2 -> rounded()
var average = Double((x + y) / 2)
average.rounded()
```
-  (10 / 3) 和 (10.0 / 3.0) 差別
    - 10 / 3 -> 是整數相除，得出的結果會是整數並捨棄小數位數
    - 10.0 / 3.0 -> 是浮點數相除，得出的結果則會是浮點數

### 4. 請寫出下列變數的型態
```
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Float = 86.8
```

### 5. 建立 salary 值為 22000，使用複合賦值運算符將 salary 加上 28000
```
var salary = 22000
salary += 28000
print(salary)  //50000
```

### 6. 程式中的 "=" 不代表運算式中的等於的意思，而是指右邊的值，放到左邊的變數中。那麼程式中的等於又該如何表示呢?
- 想要表示運算式中的等於使用 "=="


### 7. 請宣告兩個常數，值為 10 & 3，並計算出餘數，放入名為 remainder 的常數中
```
let m = 10
let n = 3
let remainder = m % n  // % 為餘數符號
```

### 8. 請說明 var & let 的差別
- var --> 可變量的變數，宣告後可以變動變數的值 
    - 像是題目 5 的薪水，原本是 22000，但因為 1 月到了領年終 28000，變成這個月拿 50000，這時薪水就不能宣告成常數，否則可能拿不到 28000 了...
- let --> 不可變量的常數，宣告後即不可在更動值數的值 
    - 像是題目 1 中的 π，今天無論圓的大小是多少，乘以的圓周率 π 都是相同的

### 9. 命名規則和慣例
- 不能使用在 Swift 中的保留值或是符號等命名
    - 保留值像是 if、else、for、while 等
    - 符號像是 +、-、&&、||、% 等
- 數字不能當作命名的字首
    - 像是 9number --> 不可行
    - 而 number9 或是 num9ber --> 可行
- 命名上則通常會使用駝峰是命名法，首字為小寫，之後單字首為大寫
    - 像是 myPhoneNameber

### 10. 以下程式碼有何錯誤
- 依照 phoneNumber 宣告時給右邊的賦值，Swift 判斷 phoneNumber 型態為 Int，此時就不能將 String 放到 Int 型態的變數中，兩者型態不同。
```
var phoneNumber = 0987654321  //Type -> Int
phoneNumber = "Hello world."  
```



