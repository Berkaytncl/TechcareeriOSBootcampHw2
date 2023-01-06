import UIKit

class Homework2 {
    
    //MARK: - Questions
    func question1(degree: Double) -> Double {
        degree * 1.8 + 32
    }

    func question2(edge1: Double, edge2: Double) {
        let rectanglePerimeter = 2 * (edge1 + edge2)
        print("Perimeter of a rectangle with sides \(edge1) and \(edge2) is \(rectanglePerimeter)")
    }
    
    func question3(number: UInt) -> UInt {
        if number <= 1 { return 1 }
        let factorial: UInt = number * question3(number: number - 1)
        return factorial
    }
    
    func question4(word: String) {
        question4(word: word, char: "a")
    }
    
    func question4(word: String, char: Character) {
        
        let newWord = word.lowercased()
        var counter = 0
        
        for character in newWord {
            if character == char { counter += 1 }
        }
        
        print("This string expression has \(counter) \(char) characters")
    }
    
    func question5(totalEdge: Int) -> Int {
        180 * (totalEdge - 2)
    }
    
    func question6(workedDay: Int) -> Int {
        let workedHour = workedDay * 8
        var totalSalary = 0
        
        if workedHour > 160 {
            totalSalary = (workedHour - 160) * 20 + 160 * 10
        } else {
            totalSalary = workedHour * 10
        }
        
        return totalSalary
    }
    
    func question7(GB amount: Double) -> Int {
        
        let roundedQuota: Int = Int(amount) + 1
        let minPayment = 100
        var totalPayment = minPayment
        
        if roundedQuota > 50 {
            totalPayment += (roundedQuota - 50) * 4
        }
        
        return totalPayment
    }
    
}

let homework = Homework2()

//MARK: - Answers
let celsiusDegree = 35.2
let fahrenhietDegree = homework.question1(degree: celsiusDegree)
print("\(celsiusDegree)°C = \(fahrenhietDegree)°F")

let (edge1, edge2) = (7.5, 13.0)
homework.question2(edge1: edge1, edge2: edge2)

let number: UInt = 20
let factorial = homework.question3(number: number)
print("\(number)! = \(factorial)")

let word = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."
homework.question4(word: word)

let totalEdge = 10
let totalAngle = homework.question5(totalEdge: totalEdge)
print("The sum of the interior angles of a \(totalEdge)-sided polygon is \(totalAngle) degrees")

let workedDay = 29
let totalSalary = homework.question6(workedDay: workedDay)
print("Worked \(workedDay) days and earned \(totalSalary)₺")

let quotaAmount = 153.4
let fee = homework.question7(GB: quotaAmount)
print("The fee to be paid at the end of \(quotaAmount)GB internet use is \(fee)₺")

