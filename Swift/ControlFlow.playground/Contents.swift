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
