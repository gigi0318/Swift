Swift: A Tiny Beginner Tutorial
 
For my class CS330 I have to write a beginners guide to a language which I have learned before or worked in. I have chosen the language swift. I chose swift because I have only ever owned an Apple gadget, and I am curious on how Apple’s favorite language actually works. Swift is a modern, compiled programming language designed to be safe, fast, and expressive.
It was created at Apple ( A team led by Chris Lattner) and announced in 2014; open‑sourced in 2015. It was designed to replace/complement Objective‑C with a safer type system, simpler syntax, dynamic dispatch, late binding, extensible programming  and modern tooling. Swift is made from a bunch of languages not just Objective C.
It also addresses some common software bugs and programming errors like null pointer dereferencing and also helps to avoid pyramid of doom.
Swift can be considered a multipurpose language but its main purpose why it came into existence was to solve the bigger problems faced by apple inc. so we can say it started as a language catering to apple needs. It later on came to wider use, since its publicly available to use.

 
What is Swift used for?
•	Mobile & desktop apps: Swift was mainly designed to address the issues that arised while making the iOS with the objective C. Thus swift is used to primarily build iOS, iPadOS, macOS, watchOS, tvOS (UIKit/AppKit/SwiftUI).
•	Server‑side & APIs: Using frameworks like Vapor
•	Scripting/CLIs: Quick utilities and automation with the swift interpreter
•	Games: With Apple frameworks (SpriteKit, SceneKit) or engines that support Swift
Swift is multi‑purpose. Example projects: iPhone apps with SwiftUI, REST APIs with Vapor, command‑line tools compiled with swiftc.
 
Install Swift
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
   
 
Write and Run a simple Program
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
 
Comments in Swift
There are two types of comments in swift.
// Single-line comment- used for shorter comments 

/* Multi-line
    comment */- these are better when there are multiple lines being written.

/* Nested comments
   /* 		inner comment 				*/	
Closing of outer comment */- these are also multi line commnets where there is one comment inside of the other 

Editor / Environment
•	Recommended (macOS): Xcode (full IDE, simulators, SwiftUI previews)
•	Cross‑platform: VS Code + Swift extension (great for server‑side and CLIs)
•	Learning/quick tests: Swift Playgrounds (Mac/iPad) 

You can pick whichever ones runs the most smoothly on your laptop environment. 


References:
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
Hacking with swift.com

Youtube sean allen code with chris etc

Reddit formus 




