import UIKit

let k = (first: "text", number:NSNumber.init(float: 5.5), somethingBool: false )

print("first item \(k.first)")

var apples : Int? = 5

//apples = nil

if apples == nil {
    print("nil apples")
} else {
    let a = apples! + 2
}

if var number = apples {
    number = number + 2
} else {
    print("nil apples")
}

//--перевод данных

let age = "60"

if Int(age) != nil {
    let ageNumber = Int(age)!;
}

if let ageNumber = Int(age) {
    ageNumber
}

var apples2 : Int! = nil

apples2 = 2

//assertation
assert(apples2 != nil, "oh no!!!")

apples2 = apples2 + 5

print("\(apples2)")

//# MARK: - Operations

var sum = 5
sum = sum + 1
sum += 1

sum += 1
sum
sum += 1



//stringmark

var str1 = "String"

str1.isEmpty


for c in "09".characters {
    print(c)
}

let char1 : Character = "x"

str1.append(char1)

(str1 as NSString).length

var someStr = NSString(string: str1)

var secStr : NSString = someStr

let preStr : NSString = "str"

someStr = "45"

secStr

preStr.hasPrefix("st")



//arraymark

var array = ["a", "b"]

array.append("c")

array[0] = "A1"

array

array[0..<2] = ["0"]

array = ["a", "b", "c", "d", "e"]

array.insert("-", atIndex: 3)

array.removeAtIndex(3)
array

let test = [Int](count: 3, repeatedValue: 100)

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]

var summa = 0

//for i in money {
//    print("i = \(i)")
//    summa += i
//}
//summa

//for i in 0..<money.count {
//    print("i = \(i)")
//    summa += money[i]
//}



for (index, value) in money.enumerate() {
    print("index = \(index) value = \(value)")
    summa += value
}

summa



//dictionarymark

var dict = ["машина" : "car", "мужик" : "man"]

dict["мужик"]

dict.count
dict.isEmpty

var dict3 = [String :String]()

dict3.count
dict3.isEmpty

//dict3["комп"] = "mac"

dict.keys
dict.values
dict.updateValue("mac", forKey: "комп")

if let com = dict["комп"] {
    print("\(com)")
}

let comp = dict["комп"]
dict.removeValueForKey("мужик")
dict

//dict = [:]
//
//dict

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}


//Switchmark

var someAge = 66

mainLoop: for _ in 0...1000 {
    
    for i in 0..<20 {
        if i == 10 {
            break mainLoop
        }
//        print(i)
    }
}

switch someAge {
    case 0...16: print("школота"); fallthrough
    case 17...25: print("other")
    case 51, 55, 56: print("done")
    default: break
}

var name = "Max"

switch name {
    case "Max" where someAge < 50:
    print("hi buddy")
    
case "Max" where someAge >= 50:
    print("I don't know you")
    default: break
}

var optional : Int? = 5

if let a = optional {
    print("\(a) != nil")
}

let tuple = (name, someAge)

switch tuple {
case ("Max", 60): print("Hi max 60")
case ("Max", 59): print("Hi max 59")
    
case (_, let number) where number >= 65 && number <= 70:
    print("value binding")
    
case ("Max", _): print("Hi, Max")
default: break
}


let point = (5,-5)

switch point {
case let (x,y) where x == y:
    print("x == y")
case let (_,y) where y<0:
    print("y<0")
default: break
}


let switchArray : [CustomStringConvertible] = [5, 5.4, Float(5.4)]
switch switchArray[2] {
case let a as Int: print("Integer")
case _ as Float: print("Float")
default: break
}

//functionmark

func calculateMoney(inWallet wallet: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
   var sum = 0
   var count = 0
    for value in wallet {
        if (type == nil) || (value == type!) {
            sum += value
            count += 1
        }
    }
    
    print("sum = \(sum)")
    
    return (sum, count)
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]


let a = calculateMoney(inWallet: wallet, withType: 100)
a.count
a.total



func calculateMoney(inSequence range: Int...) -> Int {
    var sum = 0
    for value in range {
        sum += value
    }
    return sum
}

calculateMoney(inSequence: 5,5,10,2,3,4,3,23,34,1,1)

func sayHi() {
    print("Say hi")
}

sayHi()
sayHi()
sayHi()
sayHi()


let hi = sayHi
hi
hi

func sayPhrase(pharase: String) -> Int? {
    print(pharase)
    return nil
}

sayPhrase("aaaa")

let phrase = sayPhrase

phrase("bbbb")


func doSomething(whatToDo:()->())  {
    whatToDo()
}

func whatToDo() -> () -> () {
    func printSomething() {
        print("Hellow world!!")
    }
    return printSomething
}

doSomething(sayHi)

let iShouldDoThis = whatToDo()

iShouldDoThis

func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(mathFunction(2, 3))")

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(mathFunction(a, b))")
}
//printMathResult(addTwoInts(3, 5))
// напечатает "Result: 8"

func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// возвратит 3.0, т. е. среднее арифметическое этих пяти чисел
arithmeticMean(3, 8.25, 18.75)
// возвратит 10.0, т. е. среднее арифметическое этих трех чисел


