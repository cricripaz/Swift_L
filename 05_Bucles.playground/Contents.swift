import UIKit


let names = ["a","s"]
for name in names {
    print("hola\(name)")
}



for i in 1...5 {
    print("\(i) x 3  = \(3*i)")
}



let base = 2
let power = 10
var answer = 1

print("Potencia")
for i in 1...power{
    answer *= base
    print("\(base) ^ \(i) =  \(answer)")
}


// WHILE

print("WHILE")
var i = 0

while i < 10 {
    i += 1
}
 print(i)


//IF



var temp = 18



if temp <= 15 {
    print("Hace Frio")
}else{
    print("Hace calor")
}

//SWITCH


let someCharacter : Character = "a"

switch someCharacter {
case "a":
    print("Es la primera letra del alfabeto")
case "z":
    print("es la ultima letra del alfabeto ")
default:
    print("es alguna otra letra")
}

let moons = 62

let pharse = "Lunas de saturno"
let naturalCount : String

switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "hay pocas"
case 5..<12:
    naturalCount = "hay decenas de "
case 12..<100:
    naturalCount = "Hay centenares de "
default:
    naturalCount = "HAy muchisimas"
}

//Control Transfer Sentences


let sentence = "las mentes grandes piensan igual"
var filteredSentence = ""
let charactersToRemove : [Character] = ["a","e","i","o","u"]

for ch in sentence{
    if charactersToRemove.contains(ch) {
        continue
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}


filteredSentence


let integerToDescribe = 5


var description = "El numerp \(integerToDescribe) es :"


switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += "numero primo y"
    fallthrough
default:
    description += " un numero entero"
}

print(description)


if #available(iOS 12 ,macOS 10.112 ,*){
    
    //Execute Accions for IOS 12 + and MacOs 12+
}else{
    //Keep old code For IOS 12 <
}


var gay = "Chito"


print(" gay \(gay)")





