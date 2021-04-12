import UIKit

//ARRAY
//SETS
//DICCIONARIOS



//Array


var someInts = [Int]()

someInts.count

print(someInts)


someInts.append(31)

someInts.append(32)


var someDoubles = Array(repeating: 3.141592, count: 7)

someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)


//Concatenacion de Arrays

var aLotOfDoubles = someDoubles + moreDoubles

aLotOfDoubles.count

var shoppingList : [String] = ["Patatas","Pimiento","Cerdo","Tortillas","Cebolla"]

shoppingList.count



if shoppingList.isEmpty {
    print("esta Vacia")
}else{
    print("Ricardo esta comprando")
}


shoppingList.append("Coca Cola")

shoppingList.count

shoppingList += ["Guacamole","Pico de Gallo"]


var firstElement = shoppingList[shoppingList.count-1]


shoppingList[2...3]


shoppingList.removeLast()

shoppingList



for i in shoppingList {
    print(i)
}


for (i,item) in shoppingList.enumerated() {
    print("Item \(i+1) : \(item)")
}

//Set



var letters = Set<Character>()


letters.count


letters.insert("a")
letters.insert("h")
letters.insert("b")


letters

var favoriteGames : Set<String> =
[
"Valorant","WOW","Minecraft","Fornite"
]

favoriteGames.count


if !favoriteGames.isEmpty {
    print("hay juegos ")
}

favoriteGames.remove("WOW")


if favoriteGames.contains("Valorant"){
    print("Me encanta el Juego")
}

for i in favoriteGames.sorted() {
    print(i)
}


var setNumbers :Set<Int> = [1,2,3,4,5,6,7,8,9,0]

setNumbers.sorted()


setNumbers.insert(1)

setNumbers.insert(10)


let oddDigits: Set = [1,3,5,7,9]
let evenDigits:Set = [0,2,4,6,8]
let primeNumbers :Set = [2,3,5,7]


//UNION
oddDigits.union(evenDigits).sorted()

//Interseccion
oddDigits.intersection(evenDigits)

evenDigits.intersection(primeNumbers)

//A-B = elementos que son de A ero no de B

oddDigits.subtracting(primeNumbers).sorted()

primeNumbers.subtracting(oddDigits).sorted()

// A + B  = (A-B) union (B-A)

oddDigits.symmetricDifference(primeNumbers).sorted()


let houseAnimals : Set = ["🐶","🐱"]
let farmAnimals : Set = ["🐮" , "🐓" ,"🐑","🐶","🐱"]
let cityAnimals : Set = ["🐭","🕊"]


houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)

// A y B son disjuntos si su interseccion esta vacia
farmAnimals.isDisjoint(with: cityAnimals)


//diccionarios



var namesOfIntegers = [Int : String]()



namesOfIntegers[15] = "quince"

namesOfIntegers = [:]

var airports : [String : String] = ["YYZ": " TORONTO ", "DUB": "DUblin"]

airports.count


airports.updateValue("YYZ", forKey: "ASDFDVDV")

airports


for (key , value) in airports {
    print("\(key) + \(value)")
}

for iKeys in airports.keys {
    print(iKeys)
}

let airKeysArr = [String](airports.keys)

airKeysArr
