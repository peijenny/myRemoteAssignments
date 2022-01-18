
// protocol PoliceMan
protocol PoliceMan {
    var name: String { get }
    func arrestCriminals() -> Void   // 沒有參數與回傳值
}

// protocol ToolMan
protocol ToolMan {
    func fixComputer() -> Void   // 沒有參數與回傳值
}

// struct Person & name: String
struct Person: PoliceMan, ToolMan {  // 加入 PoliceMan & ToolMan 協議
    var name: String
    func arrestCriminals() -> Void { }

    var toolMan: ToolMan
    func fixComputer() { }
}


// struct Engineer
struct Engineer: ToolMan {  // 加入 ToolMan 協議
    func fixComputer() { }   // instence
}
let Steven = Person(name: "Steven", toolMan: Engineer()) // Steven 實例
print(Steven)
