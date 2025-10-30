**Swift: A Tiny Beginner Tutorial**
 
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

https://www.programiz.com/swift-programming/for-in-loop
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/

**Scope of loop variable vs function block**
In swift loop scope variable and function variables are not the same but they are similar.

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/
**References:**

To learn swift:
https://docs.vapor.codes/
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
Youtube sean allen code with chris etc
Reddit formus 




