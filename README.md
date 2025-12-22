# Swift: A Beginner Friendly Guide

## 1. Swift Introduction and History 
 
For my class CS330 I have to write a beginners guide to a language which I have learned before or worked in. I have chosen the language swift. I chose swift because I have only ever owned an Apple gadget, and I am curious on how Apple’s favorite language actually works. Swift is a modern, compiled programming language designed to be safe, fast, and expressive.
It was created at Apple ( A team led by Chris Lattner) and announced in 2014; open‑sourced in 2015. It was designed to replace/complement Objective‑C with a safer type system, simpler syntax, dynamic dispatch, late binding, extensible programming  and modern tooling. Swift is made from a bunch of languages not just Objective C.
It also addresses some common software bugs and programming errors like null pointer dereferencing and also helps to avoid pyramid of doom.
Swift can be considered a multipurpose language but its main purpose why it came into existence was to solve the bigger problems faced by apple inc. so we can say it started as a language catering to apple needs. It later on came to wider use, since its publicly available to use.

 
**What is Swift used for?**


•	Mobile & desktop apps: Swift was mainly designed to address the issues that arised while making the iOS with the objective C. Thus swift is used to primarily build iOS, iPadOS, macOS, watchOS, tvOS (UIKit/AppKit/SwiftUI).
•	Server‑side & APIs: Using frameworks like Vapor
•	Scripting/CLIs: Quick utilities and automation with the swift interpreter
•	Games: With Apple frameworks (SpriteKit, SceneKit) or engines that support Swift
Swift is multi‑purpose. Example projects: iPhone apps with SwiftUI, REST APIs with Vapor, command‑line tools compiled with swiftc.
 
**Install Swift:**

Pick one route for your computer.
macOS (easiest)
Since it was designed for Apple it is the easiest to install in macOS.
1.	Install Xcode (a complier +IDE) from the Mac App Store (includes Swift), or
2.	Install Command Line Tools: xcode-select --install
3.	Verify: swift --version
Windows 10/11
1.	Download the latest Swift for Windows installer from swift.org
2.	Run the installer and follow defaults
3.	Open Developer Command Prompt → swift --version

If installation is tricky on Windows, using WSL (Ubuntu on Windows) is a good alternative; then use the Linux steps.
   
 
**Write and Run a simple Program:**

Now that swift is installed make a new file and name it HelloWorld.swift. 
Code:
Print(“Hello World!”)
Here print is an inbuilt function in swift and the text inside will be printed out in the terminal as output. 
To Run the program follow these steps:
From the folder that contains HelloWorld.swift:
Option A — Interpret & run directly (write in terminal)
swift HelloWorld.swift
Option B — Compile, then run
swiftc HelloWorld.swift -o hello
./hello
You should see:
Hello, World!
 
**Comments in Swift:**

There are two types of comments in swift.
// Single-line comment- used for shorter comments 

/* Multi-line
    comment */- these are better when there are multiple lines being written.

/* Nested comments
   /* 		inner comment 				*/	
Closing of outer comment */- these are also multi line commnets where there is one comment inside of the other 

**Editor / Environment:**

•	Recommended (macOS): Xcode (full IDE, simulators, SwiftUI previews)
•	Cross‑platform: VS Code + Swift extension (great for server‑side and CLIs)
•	Learning/quick tests: Swift Playgrounds (Mac/iPad) 

You can pick whichever ones runs the most smoothly on your laptop environment. 

## 2. Data types and naming conventions

**keywords/Reserved Words:**'

Swift has a defined set of keywords (including contextual ones), but Apple doesn’t
publish “the number” as a stable count—the list evolves with time. Here is some
examples fo the keywords/reserved, (Any, as, catch, false, is etc the list goes on and
can be found on the link provided)

**Naming requirments and conevtions:**

Naming rules forced by complier-

-Names must begin with a letter or underscore (_), followed by letters, digits, or underscores.-=No spaces or special characters (like @, #, !).
-Case-sensitive — myVar and MyVar are different.
-Cannot use Swift keywords (e.g. class, func) as variable names unless enclosed in backticks (`class`).

Naming Conventions (Community Standards):
-Use camelCase for variables, constants, functions → userName, calculateTotal().
-Use PascalCase for types like classes, structs, enums → UserProfile, FlightSchedule.
-Constants and variables follow the same lowercase rule; no all-caps like MAX_VALUE.
-Just a tip:Use clear, descriptive names instead of short or cryptic ones.
-Methods can share a base name 

**Statically typed:**

Swift is statically typed with type inference (the compiler infers types but they’re checked at compile time). 

**Strongly Typed**

Swift does not allow us to mix unrelated types automatically we have to explicitly declare them.
Every variable has a specific, declared (inferred) type, and that type cannot change once set. The type checking happens at the compile time. You don’t get implicit, lossy coercions across unrelated types; the compiler enforces type safety. 

**Supports explicit and implicitly typed:**

It supports both: we can declare types explicitly or the complier can do it.

**Mutable/Immutable:**

It lets us declare both types by following some rules-

For Mutable type-
var declares variables (mutable bindings)

For Immutable type-
let declares constants (immutable bindings)

 This is enforced by the compiler. For value types (structs/enums), immutability also depends on whether the instance is stored in a let or var, and mutating methods are required to modify struct/enum state

**Operators**

Arithmetic (+ - * / %) for numeric types; overflow variants like &+ &- &*. Swift Documentation+1
Comparison (== != < <= > >=) for comparable types. Swift Documentation
Assignment/compound (=, +=, etc.). Swift Documentation
Logical (! && ||) for Bool. Swift Documentation
Range (..., ..<) for ranges/iteration. Swift Documentation
Bitwise & shifting (~ & | ^ << >>) for integer types. 


**Mixed Operations**

Numeric operators generally do not implicitly mix types but if you perform an explicit conversion (Double(x), Int(y)) or use the same type on both sides it is allowed. 

**Is Swift Bound**

Identifier names (variables, types, functions)
• Type binding: Compile time. Swift infers or checks the type at compile time and pins it (static types).
• Address/storage binding: Run time.
 Local let/var: address is bound upon creation of the stack frame on function entry.
 Heap objects: address is bound upon you init/allocate.
• Function/method calls:
 Structs/enums/protocol extensions & final methods: static dispatch (resolved at compile time).
 Class methods that are overridable: typically dynamic via vtable at run time.
 Requirements of a protocol used through an existential (any P): run-time witness-table call.
Symbols of operators (+, *, etc.)
• Which to call: Compile time through overload resolution + generic constraints (operators are just functions).
• How it's called: the chosen function is inlined or called normally. If the operator is a requirement of a protocol used through an existential, the call proceeds through a witness table at run time; otherwise it's resolved statically.

Example code:
 let x = "5" + 5 
 swift has no + overload for (String,Int), thus it wont convert Int->String or vice versa. 

 Correct way:
 
 1   let x = "5" +String(5) // convatenate as strings 
     print(x)

 2   guard let five = Int("5") else { fatalError("not a number") // adds as number 
     let x = five + 5 
     print(x)

**Limitations**

Swift does not allow implicit type conversion between numeric types such as int and double. Thus it makes type coversion explicit. 
Swift arrys are homogenous meaning that the elements must be of the same type eg. elemnts can only be int or string but cannot contain both. 


**Built-in complex data type**

Swift does have several built in complex data types. 
Here are a few the rest can be found on the official site for swift. 

-let someArrays (Array<string>) – ordered collections of values of the same type.
-let someDictionaries (Dictionary<Key, Value>) – unordered collections of key-value pairs.# strings are keys, integers are values. 
-let someSets (Set<T>) – unordered collections of unique values.

implicitly Unwrapped optional type:
-varImplicitlyUnwrappedString: String! # it is automatically unwrapped when accessed.

-var someTuple (top:Int. bottom:Int) – group multiple values into a single compound value.
-var OptionalInteger: Int?  – is declare dto have a type of optional integer.

## 3. loops, if/else, switch, logical operators

**Boolean values**

Is a type of value whose instances are either true or false.
It does not use 0/1 but instead uses Bool in condionals. 

https://developer.apple.com/documentation/Swift/Bool

**Conditional Statments**

Swift has if, else, else if, gaurd can be used in place of lese as an prceed only if earlier condtion is approved. There are switch statments present used for matching purposes. Basic switch statement, interval matching, compound cases are all types of switch statements. Ternary condtional operator can be used as a shorter way of writing standard if/else statement. 

https://www.codecademy.com/learn/learn-swift/modules/learn-swift-conditionals/cheatsheet
https://vikramios.medium.com/swift-conditional-statements-loops-and-switch-statements-77f9b488925b

**Code blocks**

Code blocks can be delimited using curly braces{} in swift.

https://www.programiz.com/swift-programming/expressions-statements-blocks?

**Short Circuit**

Swift uses short circuit evalutions for its logical AND(&&) and logical OR(||) operators.

https://medium.com/@ayshindhe/short-circuiting-in-swift-a-simple-explanation-5be8358f20ca

**Dangleing else problem**

To address thsi problem swift requires the use of curly braces {} to explicitly define teh scope of if and else blocks. This helps remove the ambiguity in nested if else statements.

https://en.wikipedia.org/wiki/Dangling_else
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/statements/

**Switch/Case behaviour**

Swift does use switch/case statements and in the cases where it does use it, it does not require a explicit break because if a matching case is found the code executed in the switch statement will automatically exit. 

The continue statement is used in loop constructs to stop the current loop from iterating and move onto to the next one. 

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#Switch

**Loop types and differences**

Swift has the following types of loops, for in loop, while loop, repeat while loop, forEach loop.
for-in loop: itterates over ranges, arrays, dictionaries
while loop: contion is checked before execution
repeat-while: condtion is checked after iteration 
for each: functional style iterating 

https://www.programiz.com/swift-programming/for-in-loop
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/

**Scope of loop variable vs function block**

In swift loop scope variable and function variables are not the same but they follow Swift's block scope rules. 

```swift
// Loop scope vs function scope demonstration

func demonstrateScope() {

    // Function-scope variable
    let functionValue = 100

    // Loop with loop-scoped variable
    for i in 1...3 {
        let loopValue = i * 10
        print("Inside loop → functionValue: \(functionValue), loopValue: \(loopValue)")
    }//i is not accessible here

    // functionValue is still accessible here
    print("Outside loop → functionValue: \(functionValue)")

    //  loopValue is NOT accessible here
    // print(loopValue)  // This causes a compile-time error
}

demonstrateScope()

```


https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/


## 4. Functions

**Syntax for function**

The basic syntax to declare a function in Swift is “func” keyword followed by one or more named type values that the function takes as input, known as parameters. The function name is used to “call” the function and pass input values (also called arguments) that match the types of the function parameters. 
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/

**Function Placing**

There is no particular order as to where the function has to be placed for it to run. The function can be anywhere in the file that is being run, and the compiler will parse through the file before running, thus the position of the function doesn't matter. The function has to be in scope for it to run. 
https://www.appypievibe.ai/blog/swift-code/scope-context-swift-how-to/

**Recursive Function**

Yes, Swift supports recursion. Recursion is where a function calls itself ( can be used in scenarios like calculating a factorial of a number). 

https://www.kodeco.com/books/swift-cookbook/v1.0/chapters/9-use-recursive-functions-in-swift

**Multiple Parameters**

Swift functions can accept multiple parameters. Yes, it can also take different data types. This can happen because each parameter is allowed to have a different type and still run. 

Swift can return multiple values using a tuple, by making a compound value. The elements of a tuple can be given a name (alphabets or number).

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/

**By Pass refrence**

Swift's default is pass by value for parameters. For value types, a copy is passed for the ref types; the reference itself is passed by value.
Value types (struct, enum, tuple) → stored directly (stack), copied on write
Reference types (class, closure) → instance stored on heap, reference stored on stack
In Swift, function arguments, parameters, and most local variables are stored on the stack when they are value types. If the variable is a reference type, the reference is stored on the stack, but the instance is allocated on the heap. Value types captured by closures or escaping the stack may also be moved to the heap.

https://www.vadimbulavin.com/value-types-and-reference-types-in-swift/

**Scoping rules**

Code blocks are made using curly braces, and the code inside it remains inside that block; thus, when created, the visibility remains inside the block and will end suppose if the code block is destroyed. 
Variables declared inside a function are local to the function itself.
Anything outside that function will not be visible to the code inside that function.
Globe scope is when the variable is declared outsid ethe function and classes and sis visible and can be asscced throught the code. 
Inner scpe variable can access outer scope but not the other way round 

**Side effects in swift**

Side effects are possible in Swift. A function might change external state, such as by modifying a global variable, changing a class property, or altering in-out parameters. However, Swift encourages safer patterns and has guardrails (as that was one of the main goals of why swift was created)
Design patterns and Swift APIs encourage the use of pure functions.
let creates immutable values to avoid unintended mutation. Like this there are some other for which you can find the details in the link below. So, Swift does allow side effects; the language rules just prevent accidental shared state and mutation.

https://forums.swift.org/t/side-effects/57084/3
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/memorysafety/


**Local Variable Storing location**

The local variables that are value types - usually Int, Struct, Bool, Tuple - are stored on the stack. Reference-type values (class instances) are allocated on the heap, and reference to them (the pointer) is stored on the stack. 

https://www.vadimbulavin.com/value-types-and-reference-types-in-swift/

**Other Characteristics**

Swift has several other characteristics that are useful to know when learning about functions: Static vs dynamic dispatch: Value types struct/enum use static dispatch by default - i.e., compile-time binding. Classes can use dynamic dispatch by means of inheritance and override (runtime method lookup via v-table). First-class functions Functions can be stored in variables, passed as parameters, and returned by other functions. Closures: Swift does support closures - like lambdas - and they capture values from the surrounding scope.


## 5. Classes and inheritance

**Does Swift support objects or something similar**

Yes Swifts supports ibject oriented programming through classes. Which support inhertance, sematics and dynamic dispatch. Swift also supports structs. Classes in swift can contain properties like instance variables, methods, intializers and can inherit from a single superclass ( multi class concept). Structs and enums are also aviable to use which provide object like behaviour. 
It folows the standard rules of coding convetions which can be found in other languages also like eg python. 



https://www.swift.org/documentation/api-design-guidelines/
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/

**Naming conventions for classes, instance variables, functions**


Class names start with UpperCamelCase
methods + properties with lowerCamelCase
constants like let with lowerCamelCase
Modules/Types with UpperCamelCase
https://stackoverflow.com/questions/40228471/proper-namespacing-or-class-naming-convention-in-swift-frameworks-for-ios

**Does swift have standard methods similar to toString() or __str__**

Swift does not have standard methods similar to toString() or __str__. It Instead it uses a standard way to get a string reprenstaion of an object by using String interpolation -> \(value). 
It provides CustomStringConvertible and description.

example code:
var myInteger:Int
myInteger = 18
let myString1 = " I love the number \(myInteger)"
print(myString1)

This way you can customize the string reprentaion of a object. 

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters/#String-Interpolation
https://developer.apple.com/documentation/swift/customstringconvertible

**Inhertance in Swift and Muliple Inheritance**

Swift supports single inhertance for classes, meaning it can only inherit from a single other class. Multiple inheritance is not allowedin swift due as it adds significant complexity which swift does not handle. 
But instead swift uses protocols which achives similar benefits as in multiple inheritance. In this a class can conform to multiple protocols and implemnt behaviors as defined by each of the different protocols.

https://www.geeksforgeeks.org/swift/swift-inheritance/
https://docs.swift.org/compiler/documentation/diagnostics/multiple-inheritance/

**Overload methods**

Swift allows method overloading, its where a class can have multiple methods with the same name but they have different signature. 
Swift resolves the calls with the swifts complier, at compile time by examing the method signatures, argument labels and type context.

https://stackoverflow.com/questions/64525102/swift-how-to-deal-with-method-overloads-where-only-the-return-type-differs-and

**Important things to remember**

Swift uses single inheritance but can use multple protocol which behave similar to multiple inhertance.
Classes are refrence types while structs are value types 
methods and properties must use override explicitly 
Structs and enums use static dispatch 
Class methods that can be overridden uses dynamic dispatch 

**References:**


To learn swift:
https://www.swift.org/documentation/api-design-guidelines/
https://docs.vapor.codes/
https://langdev.stackexchange.com/questions/116/what-are-the-downsides-of-having-types-for-floats-and-integers
https://www.swift.org/documentation/?
https://www.codecademy.com/learn/learn-swift?
https://www.geeksforgeeks.org/swift/swift-tutorial/
https://www.freecodecamp.org/news/the-swift-handbook/? 
https://codewithchris.com/swift-tutorial-complete/? 
https://www.tutorialspoint.com/swift/index.htm? 
https://developer.apple.com/tutorials/develop-in-swift/welcome-to-develop-in-swift-tutorials?
wikipedia 
https://microsoft.github.io/swift-guide/Naming.html?
https://swiftbydeya.com/swift-keywords/
Hacking with swift.com
Youtube swift tutorials
Reddit formus
https://langdev.stackexchange.com/questions/116/what-are-the-downsides-of-having-types-for-floats-and-integers




