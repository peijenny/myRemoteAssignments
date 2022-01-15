
// 1. Enumerations
enum Gasoline: String {
    case gasoline92 = "92"
    case gasoline95 = "95"
    case gasoline98 = "98"
    case diesel = "diesel"
}
func getPrice(for gas: Gasoline) -> String {
    switch gas {
    case .gasoline92:
        return "28.6"
    case .gasoline95:
        return "30.1"
    case .gasoline98:
        return "32.1"
    case .diesel:
        return "26.3"
    }
}
// Associated Value 是在 enum 的 case name 後面的 ()，可以將值儲存於 enum 變數中。
// ex: case gasoline92(price: Int)




// 2. Optionals in Swift
class Pet { }
var name: Pet?

class People { }
var pet: People?

let peoplePet: People = People()
pet = peoplePet

// if let --> 如果 People 有 Pet 才處理，否則 else
/*
func unwrapPet(_ pet: People?) {
    if let unwrappedPet: People = pet {
        print(unwrappedPet)
    }
    else{
        print("Don't have pet.")
    }
}
unwrapPet(pet)
*/
 
 
// guard let --> 保證 People 有 Pet，否則 else
func unwrapPet(_ pet: People?) {
    guard
        let unwrappedPet: People = pet
    else {
        print("Don't have pet.")
        return
    }
    print(unwrappedPet)
}
unwrapPet(pet)
