import Foundation
import UIKit

struct Transistor: Equatable {
    var name: String
    var type: String
    var chanel: String?
    var maxCurrent: String?
    var hfe: String?
    var gateVoltage: String?
    var thresholdVoltage: String?
    var transconductancegm: String?
    var ZeroGateVoltageDrainCurrent: String?
    var maxVoltage: String?
    
    static func ==(lhs: Transistor, rhs: Transistor)-> Bool {
        return lhs.name==rhs.name
        //lhs and rhs indicates comparation from the left and rigth side
    }
}

/*class Transistor {
    var nombre: String
    var tipo: String
    var channel: String
    
    init(Nombre: String, Tipo: String, Channel: String) {
        self.nombre = Nombre
        self.tipo = Tipo
        self.channel = Channel
    }
}

class TBJ: Transistor {
    var hfe: Int
    var Ic: Int
        
    init(HFE: Int, IC: Int, Channel: String, Nombre: String, Tipo: String) {
        self.hfe = HFE
        self.Ic = IC
        super.init(Nombre: Nombre, Tipo: Tipo, Channel: Channel)
    }
    func queEs (){
        
    }
}

class MOSFET: Transistor {
    var gateVoltage: Int
    var Id: Int
    
    init(GateVoltage: Int, ID: Int, Channel: String, Nombre: String, Tipo: String) {
        self.gateVoltage = GateVoltage
        self.Id = ID
        super.init(Nombre: Nombre, Tipo: Tipo, Channel: Channel)
    }
    func queEs (){
        
    }
}*/
