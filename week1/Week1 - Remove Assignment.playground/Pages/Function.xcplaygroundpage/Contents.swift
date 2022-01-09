
// 1. 請宣告一個名為 greet 的 Function，並以 person 做為參數
func greet(name person: String) -> String {
    return "Hello, \(person)."
}

greet(name: "Luke")


// 2. 請宣告名為 multiply 的 Function, 參數為 a & b(預設值為 10)，並且不會 Return
func multiply (a: Int, b: Int = 10) {
    a * b
}

multiply(a: 20)  // 若為給予 b value, 則自動帶入預設值 10





