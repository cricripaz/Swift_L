import UIKit



1 == 1

1 == 2

1 != 2

2>2

2<2

2>=2

2<=2


let name = "cristian"


if name == "cristian"{
    print("Bienvenido \(name) , Estas invitado ")
}

//evalua primer elemento desde la izquierda


(1,"Juan") < (2,"Ricardo")


//OPERACIONES TERNARIAS


let contentHeigth = 40

var hasImage = true

var rowHeigth = 0


if hasImage{
    rowHeigth = contentHeigth + 50
}else{
    rowHeigth = contentHeigth + 10
}

// IF TERNARIO
rowHeigth = contentHeigth + ( hasImage ? 50 : 10 )


//NIL

let defaultAge = 18
var userAge : Int?

// la edad sera usada si no sera el deafult


var ageToBeUsed = userAge ?? defaultAge


// RANGES

//CERRADO
for idx in 1...5 {
    print(idx)

}

//ABIERTO  - Para Arrays
print("ABIERTO")

for idx in 0..<5 {
    print(idx)
}

let names = ["Cristian" , "Neyen" , "asds"]


for i in 0..<names.count {
    print(names[i])
}
print("Desde el 1 Hasta el Count (Length)")
for name in names [1...]{
    print(name)
}

print("desde deafult hasta donde le digo ")
for name in names [...2]{
    print(name)
}



//OPERADORES LOGICOS

print()
let allowEntry = false

if !allowEntry{
    print("acceso DENEGADO")
}


let enterDoorCode = true
let passRetinaScan = true


if enterDoorCode && passRetinaScan {
    print("Bienvenido")
}else{
    print("Acceso denegado")
}


let hasMoney = true
let hasInvitation = false


if hasMoney || hasInvitation {
    print("Bienvenido")
}else{
    print("No eres bienvenido ")
}



