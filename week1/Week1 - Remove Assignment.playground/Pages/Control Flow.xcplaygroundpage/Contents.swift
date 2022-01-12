

// 1. 請印出 lottoNumbers 陣列的最後三個數值
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for i in lottoNumbers.count-3..<lottoNumbers.count {
    print(lottoNumbers[i])
}
print("---")


// 2. 使用 Swift 語法取得圖中的列印結果
var j = lottoNumbers.count - 1
while j >= 0 {
    print(lottoNumbers[j])
    j -= 1
}
for j in 0..<lottoNumbers.count where j % 2 == 0 {
    print(lottoNumbers[j])
}
print("---")

// 3. 請使用 While 迴圈解決
var m = lottoNumbers.count - 1
while m >= 0 {
    print(lottoNumbers[m])
    m -= 1
}
while m < lottoNumbers.count {
    if m % 2 == 0 {
        print(lottoNumbers[m])
    }
    m += 1
}
print("---")


// 4. 請使用 repeat-while 迴圈解決
var n = lottoNumbers.count - 1
while n >= 0 {
    print(lottoNumbers[n])
    n -= 1
}
repeat {    // 無論如何會執行第一次
    if n % 2 == 0 {
        print(lottoNumbers[n])
    }
    n += 1
} while n < lottoNumbers.count
print("---")


// 6. 使用變數 isRaining 紀錄天氣，寫出以下判斷式
// 當天氣是 raining 印出 "It’s raining, I don’t want to work today."，否則為印出 "Although it’s sunny, I still don’t want to work today."
var isRaining = true
if isRaining == true {
    print("It’s raining, I don’t want to work today.")
}
else {
    print("Although it’s sunny, I still don’t want to work today.")
}
print("---")


// 7. 使用數字建立工作級別
// 1 -> Member, 2 -> Team Leader, 3 -> Manager, and 4 -> Director
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
