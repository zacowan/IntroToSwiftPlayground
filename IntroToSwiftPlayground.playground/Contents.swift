/*
 ______________________________________[Code by Zachary Cowan]______________________________________
 This Swift playground will give you a general idea about the Swift syntax. This is NOT a complete 
 list of everything that is available to you in Swift, it is just intended to get you started. For 
 more information about Swift, please see the Swift language guide by apple: 
 https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html.
 If you have any other questions, feel free to visit us during our "office hours". We will have the 
 times posted to our Facebook group (https://www.facebook.com/groups/265059094108016/) or our 
 website (https://siddhatiwari.github.io/UF-iOS-Club/)..
 ___________________________________________________________________________________________________
*/
import UIKit

//Basic variable declaration, no need to declare a type. Swift does this automatically if you initialize the variable.
var str = "Hello, playground"

//If you want to specify a variable type explicitly, you can use the syntax below.
var number: Int = 0

//Constants are declared with "let", and cannot be changed.
let decimalNumber: Double = 12.257

//Basic for-loop. This loop will start with i = 1, and continue for i = 4. The loop will run for the fourth loop.
for i in 1 ... 4 {
    print(i)
}

//This loop will not run for the fourth loop.
for i in 1 ..< 4 {
    print(i)
}

//Basic structure for a while-loop.
while str == "Hello, playground" {
    str = "Hello"
    print(str)
}

//Basic array declaration. You can declare an array type in a similar way that you would declare a variable type.
let sampleArray = ["47", "oof"]
//or
let sampleArrayWithType: [Int] = [5, 10, 12]

//Basic dictionary declaration. Dictionaries store key-value pairs, and you can call on a key to return its value. 
//The keys and values do not have to have the same variable type.
let sampleDict = ["k1" : "v1", "k2" : "v2"]
//or
let sampleDictWithType: [String : Int] = ["k1" : 5, "k2" : 12]

//You can also declare empty arrays or dictionaries, shown below.
let arr = [String]()
let dict = Dictionary<String, String>()

//This for-loop will iterate over every item in a dictionary, allowing you to read each key and value.
for (key, value) in sampleDict {
    //This is one way that you can add variables to strings in Swift. It looks confusing, but its just an easy way 
    //to add variables.
    print("\(key) : \(value)")
    //The traditional way of doing it like most people are used to also works, shown below.
    //print(key + " : " + value)
}

//This for-loop will iterate over every item in an array. This allows you to avoid the use of array[index] if you 
//are not relying on an index.
for item in sampleArray {
    print(item)
}

//Some variables can be optionals. Think of an optional like a gift box. If a variable has a question mark, then 
//it is wrapped like a present. We do not know what is inside of the present, unless we unwrap it. Just like there 
//are multiple ways to unwrap a present, there are multiple ways to "unwrap" an optional.

//This variable was declared as an optional. Its value can either be an integer, or nil (aka empty).
let optionalInt: Int? = nil

//The code below is the "safe" way to "unwrap" an optional. What is happening is we are checking if the the optional 
//variable is NOT nil. If it is NOT nil, then it will print out the value of it.
if let optionalIntUnwrapped = optionalInt {
    print(optionalIntUnwrapped)
} else {
    print("Gift is empty!")
}

//We can use exclamation points to force Swift to unwrap an optional. Generally, we do not want to do this unless we 
//know FOR SURE that our optional is never going to be nil.
let optionalString: String? = "I'm an optional string."
print(optionalString!)

//This is just another array, holding items of type string.
let pokemonNames: [String] = [
    "Chu", "Charmander", "JigglyPuff", "Magikarp"
]

//This is an example of a function/method in swift. Notice how each parameter must have a type. Also note how each 
//paramater can have a separate name that will be shown when you fill in the function. In order to set a return value 
//type, simply add a -> VariableType to indicate a variable that the function will return.
func sampleFunc(paramName param: Int) -> String {
    return "The number is \(param)."
}

//Note how paramName is shown, and not param.
print(sampleFunc(paramName: 50))

//Also note that you are not required to give a separate name for param.
func sampleFuncTwo(param: String) -> Int {
    return param.count
}

print("The length of the string 'blue' is \(sampleFuncTwo(param: "blue"))")

//A class is like a blueprint for something that we want to use reapeatedly. Each class can have its own set of 
//functions and variables.
class Pokemon {
    //There are two main types of variables: public and private. Private variables can only be accesses from 
    //within the class they are created in. Public variables, on the other hand, can be accessed outside of the 
    //class. Examples will be shown below. However, it is generally considered best practice for all of your 
    //variables to be private within a class. In order to get or set the values of private variables, simply 
    //create public functions that return or change the value of the private variable.
    private var name: String
    private var level: Int
    public var power: Int
    
    //Classes must be initialized so that each of its variables has a value when it is created. This is the 
    //syntax for a constructor.
    init(name _name: String, level _level: Int, power _power: Int) {
        name = _name
        level = _level
        power = _power
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getLevel() -> Int {
        return level
    }
}

//Notice how we create a new Pokemon class with the constant pika, and initialize it with a random name 
//(from the array of names listed earlier), a level of 1, and a power of 9001 (over 9000).
let pika = Pokemon(name: pokemonNames.randomElement()!, level: 1, power: 9001)

//We can access the values of the private variables (name and level) by calling the public get functions 
//(getName() and getLevel()). However, to access our public variable (power), we do not need to call a 
//function. If we try to access the value of level in the same way we do power, swift will throw an error.
print("\(pika.getName()) is level \(pika.getLevel()) with a power level of \(pika.power).")

//Methods can be used in if-statements
if pika.getName() == "Chu" {
    print("issa pikachu")
} else {
    print("issa not pikachu")
}

//More practice with classes, this time we are using public variables, so there is no need to call any "get" 
//functions. Remember, it is best practice to keep variables within classes private.
class Meme {
    var score: Int
    var name: String
    
    init(_score: Int, _name: String) {
        score = _score
        name = _name
    }
}

//In the same way that we create an array of integers, we can create an array that contains a type of class. 
//This is shown below.
let memes: [Meme] = [Meme(_score: 5, _name: "Moth"), Meme(_score: 4, _name: "Chair"), Meme(_score: 21, _name: "21")]

//This just another simple for-loop.
for meme in memes {
    print("MEME REVIEW!")
    print("Our first meme is \(meme.name)")
    print("This meme has a score of \(meme.score)")
    if meme.score > 4 {
        print("This is most definitely a dank meme.")
    } else {
        print("This is most definitely not a dank meme.")
    }
}

//Again, this is not comprehensive. It is just meant to give an introduction to the Swift language. Feel free to ask 
//questions or do more practice on your own!

