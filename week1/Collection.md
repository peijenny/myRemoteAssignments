---
tags: Week1 - Remote Assignments
---
# Collection

### 1. 請建立一個空的字串陣列，名 myFriends
```
var myFriends: [String] = []
```

### 2. 承接題 1，將 Ian、Bomi、Kevin 加入陣列中
```
myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")
```

### 3. 還有一個 Michael 忘記加入陣列中，加到最後一個
```
// 方法1 --> append
myFriends.append("Michael")
```
```
// 方法2 --> insert
myFriends.insert("Michael", at: myFriends.count)
```

### 4. 請將 Kevin 移到陣列的第一個
```
// 方法1 --> 如果知道 Kevin 的 Index 時
myFriends.remove(at:2)
myFriends.insert("Kevin", at: 0)
```
```
// 方法2 --> 如果不知道 Kevin 的 Index 時，可以使用 for 迴圈 + if 判斷
for i in 0..<myFriends.count {
    if myFriends[i] == "Kevin" {
        myFriends.remove(at:i)
        myFriends.insert("Kevin", at: 0)
    }
}
```

### 5. 請使用 for...in print 出所有 myFriends 陣列的值
```
for i in 0..<myFriends.count {
    print(myFriends[i])
}
```

### 6. myFriend 的 Index 5 是什麼值
- 會出現 Fatal error，由於 myFriend 的長度只有 4，因此 Index 也只有 0 ~ 3 而已
```
myFriends[5] // Fatal error: Index out of range
```

### 7. 請問陣列中的第一個值是什麼呢
```
myFriends.first  // Kevin
```

### 8. 請問陣列中的最後一個值是什麼呢
```
myFriends.last  // Michael
```

### 9. 請建立一個 key -> String: value -> Int 的字典，名 myCountryNumber
```
var myCountryNumber: [String: Int] = [:]
```

### 10. 請加入三個key -> US、GB、JP 並且 value -> 1、44、81
```
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
```

### 11. 將 GB 的 value 從 44 改成 0
```
myCountryNumber.updateValue(0, forKey: "GB")
```

### 12. 要如何宣告一個空字典
- 必須知道 key & value 的型態，才能宣告
    - 像是題 9，key -> String: value -> Int，就是宣告一個空的字典 myCountryNumber

### 13. 如何刪除字典裡面的 key-value
- 可以使用 removeValue 移除
    - 假設將 myCountryNumber 的 JP 拿掉
```
myCountryNumber.removeValue(forKey: "JP")
```
- 或是直接將 value 的值改成 nil
    - 假設將 myCountryNumber 的 JP 拿掉
```
myCountryNumber["JP"] = nil
```

