---
tags: Week1 - Remote Assignments
---
# Function

### 1. 請宣告一個名為 greet 的 Function，並以 person 做為參數標籤，name 則作為參數名
```
func greet(name person: String) -> String {
    return "Hello, \(person)."
}

greet(name: "Luke")

```


### 2. 請宣告名為 multiply 的 Function, 參數為 a & b(預設值為 10)，並且不會 Return
```
func multiply (a: Int, b: Int = 10) {
    a * b
}

multiply(a:20)  // 若為給予 b value, 則自動帶入預設值 10
```

### 3. 請說明參數標籤(argument label) 與參數名稱(parameter name) 之間的區別
Function 的參數都有標籤與名稱，參數標籤可能會重複，但是標籤名稱只能是唯一值。
當呼叫 Function 時， 使用參數標籤，參數名稱則是在執行時使用，如果參數標籤不標示(default)，則使用參數名稱當作參數標籤。

### 4. 下面 Function 會 Return 什麼型態呢
要得知會 Function 會 Return 的型態，從 func ..()  -> 箭頭後面的型態判斷。
- Return String 型態
```
func birthday( ) -> String {
}
```
- Return Double 的型態
```
func payment( ) -> Double {
}
```


