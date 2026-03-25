import UIKit

var num1:Double
var num2:Double
enum operacion {
    case suma; case resta; case multiplicacion; case division; case resto
}
func calculadora(n1: Double, n2: Double, calculo: operacion) -> Double?{
    switch calculo {
    case .suma:
        return n1+n2
    case .resta:
        return n1-n2
    case .multiplicacion:
        return n1*n2
    case .division:
        if n2==0{
            return nil
        }else{
            return n1/n2
        }
    case .resto:
        let result=Int(n1)%Int(n2)
        return Double(result)
    }
}


if let resultado = calculadora(n1: 23.23, n2: 0, calculo: .division){
    print(resultado)
}else{
    print("operacion invalida")
}
