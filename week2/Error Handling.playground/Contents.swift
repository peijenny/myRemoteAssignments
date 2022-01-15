

enum GuessNumberGameError: Error {  // Type Error
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
        
        try guess(number: 20)  //參數 20
    }
}


