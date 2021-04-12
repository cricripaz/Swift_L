import UIKit

enum SomeEnumeration {
    //enumerados
}



enum CompassPoint{
    case north
    case south
    case east
    case west
}


enum Planet {
    case mercury ,venus,earth,mars,jupiter
         ,saturn,neptune
}


var directionToGo = CompassPoint.east

directionToGo = .north


enum Beverage : CaseIterable {
    
    case coffee,tea,juice , redbull
}

enum BarCode{
    case upc(Int , Int ,Int ,Int)
    case qrCode(String)
}

var productBarcode = BarCode.upc(8, 844848, 51226, 3)

productBarcode = .qrCode("7shdad&sdbsadusd")


enum ASCIIIControlCharacter : Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}


