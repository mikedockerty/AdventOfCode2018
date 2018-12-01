// Read and format puzzle input
var stringInput = input(filename: "puzzle_input_1_1")
stringInput.removeAll(where: {$0 == "+"})
let splitString = stringInput.split(separator: "\n")
let puzzleInput = splitString.map { Int($0)! }


// Puzzle #1

var frequency = 0

for changeAmount in puzzleInput {
    frequency += changeAmount
}

print(frequency)


// Puzzle #2

frequency = 0
var frequencySet = Set([frequency])
var duplicateFrequencyFound = false

while !duplicateFrequencyFound {
    for changeAmount in puzzleInput {
        frequency += changeAmount
        if frequencySet.contains(frequency) {
            print("Duplicate frequency: \(frequency)")
            duplicateFrequencyFound = true
        } else {
            frequencySet.insert(frequency)
        }
    }
}
