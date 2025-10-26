// you can run this code 
//I have provided code for each of the ponters described in the read.me file 
import Foundation

// 1) Hello 
print("Hello, World!") 

//Comments 

// single-line
/*
 multi-line
 nested /* ok */
*/

// 2) Variables / constants
var age = 21 // have to declare var  
age = 22
let birthYear = 2004

// 3) Type inference + explicit
var city = "Boston"      // inferred String
var score: Int = 95      // explicit Int
print("City: \(city), Score: \(score)")

// 4) Operators & ranges
let sum = 5 + 3
let product = 2 * 6
for i in 1...3 { print(i) } // 1 2 3

// 5) Strong typing & conversion
let x = "5"                 //fixed
let y = Int(x)! + 5
print("y =", y)

// 6) Numeric mix
let aNum = 7
let bNum = 3.5
let total = Double(aNum) + bNum
print("total =", total)

// 7) Collections, tuple, optionals
var fruits = ["Apple", "Banana"]
fruits.append("Mango")
var ages: [String:Int] = ["Alice":25]
var uniq: Set = [1,2,2,3]
let person = (name:"Gia", age:21)
print(person.name)

var optionalString: String? = "Hello"
print(optionalString!)                // force unwrap (ok for demo)

var implicitString: String! = "Hi Swift"
// Choose ONE of these; all compile. We'll use default:
print(implicitString ?? "nil")        // avoids warning

// 8) Functions
func add(_ a: Int, _ b: Int) -> Int { a + b }
print("add =", add(5, 3))






*/
