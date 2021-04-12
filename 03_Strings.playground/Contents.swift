import UIKit

var str = "Hello, playground"

let someString = "Soy un Strine"

let multiLineString = """
    sdsdsdsd
    sdsdsdsdsd
    dsdsdsdsd
"""

print(multiLineString)


let wiseWords = " \"La Imaginacion \" - Albert Eistein "

print(wiseWords)


let dolarSign = " \u{1F924}"


print(dolarSign)

var emptyString = ""


var anotherString = String()



if emptyString.isEmpty {
    print("Esta Vacio")
}

var newSomeString = " un Caballo"


newSomeString += " Y un carruaje"



//LET  == COnstante e inmutable


var a = "A"
var b = "B"

print("a vale \(a) y la b vale \(b)")

b = a

print("a vale \(a) y la b vale \(b)")

b = "C"

print("a vale \(a) y la b vale \(b)")


// CHARACTERS

print()
let name = "Cristian Paz"

for i in name {
    print(i)
}

let exclamationMark : Character = "!"

let nameChars : [Character] = ["D","A","D",exclamationMark]

var nameString = String(nameChars)


nameString.append("1")

//INDICES


let greeting = "HOLA , que tal "


greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]


for i in greeting.indices {
    print("\(greeting[i])" , terminator : "")
}


var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.remove(at: welcome.index(before: welcome.endIndex))



greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex



let firstPart = greeting[..<index]

let newString = String(firstPart)

let newGreeting = "Hola , soy Juan"

newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("n")




let collection = [
    "Act 1 Scene 1 " , "Act 1 Scene 2 " ,"Act 1 Scene 3 " ,"Act 1 Scene 4 " ,"Act 1 Scene 5 ",
    "Act 2 Scene 1 " , "Act 2 Scene 2 " ,"Act 2 Scene 3 " ,
    "Act 3 Scene 1 " , "Act 3 Scene 2 "

]


var act1SceneCount = 0

for scene in collection {
    if scene.hasPrefix("Act 1"){
        act1SceneCount+=1
    }
}


print("El numero de Escenas del Acto 1 es : \(act1SceneCount) " )


let ghost = "Fantasma 👻"
