---
tags: Week1 - Remote Assignments
---
# Control Flow

### 1. 請印出 lottoNumbers 陣列的最後三個數值
```
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for i in lottoNumbers.count-3..<lottoNumbers.count {
    print(lottoNumbers[i]) // 7 6 5
}
```

### 2. 使用 Swift 語法取得圖中的列印結果
```
for j in 5...10 {
    print(j)  // 5 6 7 8 9 10
}

var k = 10
while k >= 6 {
    print(k)  // 10 8 6
    k -= 2
}
```

### 3. 使用 While 迴圈解決
```
var m = 5
while m <= 10 {
    print(m)  // 5 6 7 8 9 10
    m += 1
}
while m >= 6 {
    if m % 2 == 0 {
        print(m)  // 10 8 6
    }
    m -= 1
}
```

### 4. 請使用 repeat-while 迴圈解決
```
var n = 5
while n <= 10 {
    print(n)
    n += 1
}
repeat {    // 無論如何會執行第一次
    if n % 2 == 0 {
        print(n)
    }
    n -= 1
} while n >= 6
```

### 5. while 和 repeat-while 之間的差別
- while 是只有在條件成立時，才會執行迴圈裡面的內容
- repeat-while 是無論如何都會先執行一次迴圈裡面的內容，儘管超出 while 的條件範圍也是

### 6. 使用變數 isRaining 紀錄天氣，寫出以下判斷式
當天氣為印出 raining 印出 "It’s raining, I don’t want to work today."
否則印出 "Although it’s sunny, I still don’t want to work today."
```
var isRaining = "sunny"
if isRaining == "raining" {
    print("It’s raining, I don’t want to work today.")
}
else {
    print("Although it’s sunny, I still don’t want to work today.")
}
```

### 7. 使用數字建立工作級別
1 -> Member, 2 -> Team Leader, 3 -> Manager, and 4 -> Director
```
var jobLavels = [
    1 : "Member",
    2 : "Team Leader",
    3 : "Manger",
    4 : "Director"]

var askJob = 1
switch askJob {
case 1, 2, 3, 4:
    if let ansJob = jobLavels[askJob] {
        print(ansJob)
    }
default:
    print("We don't have this job.")
}
```



