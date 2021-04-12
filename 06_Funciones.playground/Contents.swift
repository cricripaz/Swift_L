import UIKit


func greeting (person : String ) -> String {
    let greet = "Hola , \(person) !"
    return greet
}


greeting(person: "Cristian")

//Cero parametros

func sayHelloWorld() -> String {
    
    return "Hello world"
    
}


sayHelloWorld()



func greet2(p : String){
    print("HOLA \(p)")
}


greet2(p: "s")


func printAndCount (string : String) -> Int {
    print(string)
    return string.count
}

printAndCount(string: "holamundo")


func someFunction(f1 first : Int , f2 second : Int){
    
    print(first+second)
}

someFunction(f1: 3, f2: 2)


func greetingG (_ person : String , from hometown : String) -> String{
 return "HOla \(person)"
}


greetingG("ssss", from: "Bolivia")


//Variadico

func mean(_ numbers : Double... ) -> Double {
    
    var total : Double  = 0
    
    for i in numbers {
        total += i
    }
    
    
    return total / Double(numbers.count)
    
}


mean(3,4,5,5,5,5,5,5,5,5,5,5,7,8,9)


var x = 5


func addOne (number : Int){
    
}

func swapTwoInts (_ a : inout Int , _ b : inout Int){
    let tempA = a
    a = b
    b = tempA
}


var someInt = 2
var otherInt = 3

swapTwoInts(&someInt, &otherInt)

someInt
otherInt



//TYPES


func addTwoInts (_ a : Int , _ b : Int) -> Int {
    return a+b
}

//(Int ,Int) -> Int
func multiplyTwoInts (_ a : Int , _ b : Int) -> Int {
    return a*b
}
// () -> Void
func printHW(){
    print("HW")
}



//First Order Functions

var mathFunction : (Int,Int)-> Int = multiplyTwoInts


mathFunction(4,5)

func printMathResult (_ mathFunc : (Int , Int ) -> Int , _ a : Int , _ b : Int){
    print("res : \(mathFunction(a,b)) ")
}

printMathResult(multiplyTwoInts, 2, 3)




func stepForward (_ input : Int) -> Int {
        return input + 1
}


func stepBackward (_ input : Int) -> Int {
        return input - 1
}

//                                         (parametro ) -> salida
func chooseStepFunction (backward : Bool ) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}


var value = -7



let moveNearerZero = chooseStepFunction(backward: value > 0)



while value != 0 {
    print("\(value)...")
    value = moveNearerZero(value)
}

print("Ceroo")


//Funciones Closure



