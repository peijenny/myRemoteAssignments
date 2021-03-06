

// 1. class Animal & enum & Gender

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}


// 2. Elephant、Tiger、Horse 繼承 Animal
class Elephant: Animal {
    override func eat() {
        print("Maybe eat plant.")
    }
}

class Tiger: Animal {
    override func eat(){
        print("Maybe eat meat.")
    }
}

class Horse: Animal {
    override func eat(){
        print("Maybe eat grass.")
    }
}


// 3. Class Zoo & property weeklyHot
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = Animal(gender: .male)
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: .male))
zoo.weeklyHot = Tiger(gender: .male)
zoo.weeklyHot = Elephant(gender: .male)
zoo.weeklyHot = Horse(gender: .male)


// 4. Struct & Class --> Difference
// Struct(類別) - 不具備繼承功能，若是要繼承，則必須透過 protocol。
// Class(物件) - 具備繼承功能，呼叫的時候會產生物件實例，因此呼叫時會需要加上()。


// 5. instance method & type method --> Difference
// instance method(實體方法) - 是屬於一個特定型別 Class、 Struct 與 Enum 的實體，用來存取修改實體屬性、功能的方法，並且只能依附於所屬的型別當中，使用 func 建立。
// type method(型別方法) - 定義在特定型別 Class、 Struct 與 Enum 上的方法，並且於型別即呼叫。


// 6. Initilizer --> Do in class & Struct
// Struct - 預設有 initializer, 呼叫時需要有外部參數名稱
// Class - 需初始化函數 init，不需透過 func


// 7. self mean --> In an instance method & type method
// self in instance method(實體方法) - self 即等於實體本身，也因此經常會省略 self 不寫。
// self in type method(型別方法) - 指向型別本身，而非型別中的實體。


// 8. reference type & value type --> Difference
// value type 保存變數的值，最小單位的基本型別 - Struct (ex: Int、Double、Bool、String、Array、Dictionary...)
// reference type 保存變數的位置，自定義可被參考的型別 - Class (ex: func...)
