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

sum++
sum
++sum

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











