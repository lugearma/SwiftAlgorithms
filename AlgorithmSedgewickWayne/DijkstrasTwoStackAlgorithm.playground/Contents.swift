//: Playground - noun: a place where people can play

import Cocoa

class Evalutate{
    
    var operatorsStack = [String]()
    var operandsStack = [Double]()
    
    func evaluate(){
        let op = self.operatorsStack.removeLast()
        var v = self.operandsStack.removeLast()
        
        switch op {
        case "+":
            v = operandsStack.last! + v
        case "-":
            v = operandsStack.last! - v
        case "*":
            v = operandsStack.last! * v
        case "/":
            v = operandsStack.last! / v
        case "sqrt":
            v = sqrt(v)
        default:
            print("hola algo mal")
        }
        
        operandsStack.append(v)
    }
    
    func main(var expresion: [String]) -> Void{
        
        while !expresion.isEmpty{
            
            let s = expresion.first!
            
            switch s {
                case "(":
                    print("Hola")
                case "+":
                    operatorsStack.append("+");
                case "-":
                    operatorsStack.append("-");
                case "*":
                    operatorsStack.append("*");
                case "/":
                    operatorsStack.append("/");
                case "sqrt":
                    operatorsStack.append("sqrt");
                case ")":
                    self.evaluate()
                default:
                    operandsStack.append((Double(s))!)
            }
            expresion.removeFirst()
        }
        print("Result: \(operandsStack.last!)")
    }
}

var eval = Evalutate()


var arr = ["(", "4", "+", "3", ")"]
eval.main(arr)







