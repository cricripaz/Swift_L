import UIKit

// 1.Global functions
// 2.Nested functions
// Closure


let names = ["cris" , "Erick " , "Pepito" ,"Marcelo","Pedro"]



//descendete
func backward (_ s1 : String , _ s2 : String) -> Bool {
    return s1 > s2
}



var reversedNames = names.sorted(by: backward)


/*
 { (params) -> return type
    //Code
 }
 */


reversedNames = names.sorted(by: {
    (s1 : String , s2 : String) -> Bool in
    return s1 > s2
})


reversedNames = names.sorted(by: {s1 , s2 in  s1 > s2})

print(reversedNames)
  
reversedNames = names.sorted(by: {$0 > $1})

reversedNames = names.sorted(by: >)



//TRAILING Closure



func someFunctionThatTakesAClosure(closure : () -> Void){
    // Here body
}

someFunctionThatTakesAClosure(closure: {
    //Body Closure
})


someFunctionThatTakesAClosure {
    //Body Closure
}

// $0 > $1
// primer elemento va antes que el segundo



reversedNames = names.sorted { $0 > $1}


let digitNames = [0:"Cero",1:"Uno",2:"Dos",3:"Tres",4:"Cuatro",5:"Cinco",
                  6:"Seis",7:"Siete",8:"Ocho",9:"Nueve"]



let numbers = [16,58,510,2127]

let numberStrings = numbers.map {(number) -> String in
    var number = number
    var output = ""
    
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
    
    return output
}


func makeIncrementer (forIncre amount : Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer;
}


let incrementByTen = makeIncrementer(forIncre: 20)

incrementByTen()
incrementByTen()
incrementByTen()


let incrementBySeven = makeIncrementer(forIncre: 7)
incrementBySeven()
incrementBySeven()


var completionHandlers : [ () -> Void] = []


func someFunctionWithEscapingClosure(competionHandler : @escaping () -> Void){
    completionHandlers.append(competionHandler)
}
completionHandlers.count


func someFunctionWNEC (closure : () -> Void){
    closure
}

class SomeClass{
var x = 10
func doSomething (){
    someFunctionWithEscapingClosure {
        self.x = 100
    }
    
    someFunctionWNEC{
        x = 200
    }
}
}


let instance = SomeClass()

print(instance.x)

instance.doSomething()
print(instance.x)

