
// 1. Enumerations
enum Gasoline: String {    // 型態為 String
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return 28.6
        case .oil95:
            return 30.1
        case .oil98:
            return 32.1
        case .diesel:
            return 26.3
        }
        
    }
}

print(Gasoline.oil92.rawValue)   // rawValue 取原始值

var getOil92Price: Gasoline = .oil92
getOil92Price.getPrice()  // 透過 getPrice 取 oil92 的價格

// 請解釋 enum associated value (關聯值) 是什麼，如何運用
// Associated Value 除 case 宣告種類以外，可以在參數名稱後面，使用 () 宣告相關聯的參數值。


// 2. Optionals in Swift

class Pet {
    var name: String
    
    init(name: String) {  // class 初始宣告
        self.name = name
    }
}
Pet.init(name: "cat")

class People {
    var pet: String?   // Opctional Type
    
    func myPet1(pet: String?) {
        guard let myPet = pet else { return }  // 若符合執行 else { }
        print(myPet)
    }
    
    func myPet2(pet: String?) {
        if let myPet = pet {    // 若符合則執行 { }
            print(myPet)
        }
    }

}
