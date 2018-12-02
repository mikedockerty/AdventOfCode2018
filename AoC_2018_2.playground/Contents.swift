// Read and format puzzle input
var stringInput = input(filename: "puzzle_input_2_1")
let idList = stringInput.split(separator: "\n")

// Puzzle #1

func solvePuzzleOne() {
    var doubleCount = 0
    var tripleCount = 0

    for id in idList {
        var letterCount: [Character: Int] = [:]

        id.map {
            if letterCount[$0] != nil {
                letterCount[$0]! += 1
            } else {
                letterCount[$0] = 1
            }
        }
        
        if letterCount.values.contains(2) {
            doubleCount += 1
        }
        
        if letterCount.values.contains(3) {
            tripleCount += 1
        }
    }

    print(doubleCount * tripleCount)
}

let testInput = """
abcde
fghij
klmno
pqrst
fguij
axcye
wvxyz
"""
let testList = testInput.split(separator: "\n")

func stringCompare(a: String, b: String) -> String {
    guard a.count == b.count else {
        print("Strings must contain same amount of characters")
        return ""
    }
    
    var matchingCharacters = ""
    for i in 0..<a.count {
        let ai = a[a.index(a.startIndex, offsetBy: i)]
        let bi = b[b.index(b.startIndex, offsetBy: i)]
        if ai == bi {
            matchingCharacters.append(ai)
        }
    }
    
    if matchingCharacters.count == a.count - 1 {
        print(matchingCharacters)
    }
    
    return matchingCharacters
}

for a in idList {
    for b in idList {
        if a != b {
            stringCompare(a: String(a), b: String(b))
        }
    }
}
