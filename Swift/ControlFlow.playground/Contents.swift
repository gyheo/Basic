import UIKit

let koreanAlphabet = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ",
                      "ㅂ", "ㅅ", "ㅅ", "ㅇ", "ㅈ",
                      "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ",
                      "ㄲ", "ㄸ", "ㅃ", "ㅆ", "ㅉ"]

for index in 0...koreanAlphabet.count-1 {
    print(koreanAlphabet[index])
}

var shortExtension:[String: String] = ["C":"c", "C++":"cpp", "C#":"cs",
                                       "JavaScript":"js", "TypeScript":"ts",
                                       "Python":"py", "Ruby":"rb","Java":"java",
                                       "Swift":"playground", "Kotlin":"kt"]

for (key, value) in shortExtension {
    print("\(key) programming language extension is \(value)")
}

let base = 2
let power = 10
var result = 1

// underscore in for loop
for _ in 1...power {
    result *= base
}

print(result)

let minutes = 60
for tickMark in 0..<minutes {
    // render the tick mark each minute (60 times)
    // print(tickMark)
}

let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("tickMark")
}

let finalSquare = 25
var board = [Int](repeating: 0, count:finalSquare + 1)

board[3] = +8; board[6] = +11; board[9] = +9; board[10] = +2
board[14] = -10; board[19] = -11; board[22] = -2; board[24] = -8

print(board)

var square = 0
var diceRoll = 0

/*
while square < finalSqaure {
    diceRoll += 1
    if diceRoll == 7 {
        // 1...6 => 1...6 => 1...6
        diceRoll = 1
    }
    
    square += diceRoll
    
    if square < board.count {
        square += board[square]
    }
    print("square : \(square), diceRoll : \(diceRoll), square : \(square)")
}
*/

repeat {
    square += board[square]
    print("square : \(square), diceRoll : \(diceRoll), square : \(square)")
    
    diceRoll += 1
    
    if diceRoll == 7 {
        diceRoll = 1
    }
    
    square += diceRoll
} while square < finalSquare

print("GAME OVER")

// if, else if
let microDust = 22 // 9월 5일 미세먼지

if microDust < 15 {
    print("좋음")
} else if microDust < 35 {
    print("보통")
} else if microDust < 75 {
    print("나쁨")
} else {
    print("매우나쁨")
}
