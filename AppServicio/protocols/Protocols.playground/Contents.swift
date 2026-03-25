import UIKit


//MARK: CustomStringConvertible
class MicroController:  CustomStringConvertible{       //CustomStrinCovertible is the protocole which allows
                                                        //us to return the string we want to show when we print
                                                        //an object from the class MicroControllers
    let Name: String
    let Processor: String
    let Pines: Int
    let ArduinoFramework: Bool
    
    init(name: String, processor: String, pines: Int, arduinoFramework: Bool){
        self.Name=name
        self.Processor=processor
        self.Pines=pines
        self.ArduinoFramework=arduinoFramework
    }
    var description: String{
        return "MicroController(Name: \(Name), Processor: \(Processor), Pines: \(Pines), Arduino Framework compatibility: \(ArduinoFramework))"
        //definition of the String which will be printed
    }
}

print("CustomStringConvertible result example")
let Micro1=MicroController(name: "TivaC", processor: "tm4c1294ncpdt", pines: 100, arduinoFramework: false)
print(Micro1)

//MARK:Equatable protocol

struct Employee: Equatable{     //Equatable protocl needs the satic function which compares the arguments
                                //if theres no function declarartion for equatable protocl, compiller will
                                //create a function wich compares all the propoerties of the struct or enumeration
                                //the autogeration does not work with class
    var firstName: String
    var lastName: String
    var phoneNumber: String
    
    static func ==(lhs: Employee, rhs: Employee)-> Bool {
        return lhs.firstName==rhs.firstName && lhs.lastName==rhs.lastName && lhs.phoneNumber==rhs.phoneNumber
        //lhs and rhs indicates comparation from the left and rigth side
    }
}

//MARK:equatable + comparable protocol

struct Company:Equatable, Comparable {        //when using comparable protocol, its //necesary to adopt Equatable protocol too and to add de operator
    // < in te return of the fuction
    var Name: String
    var employees: [Employee]
    
    static func < (lhs: Company, rhs: Company)-> Bool {
        return lhs.Name < rhs.Name
        //lhs and rhs indicates comparation from the left and rigth side
        //operator < sort string alphabetically from top to botom, > sort
        //strings alphabetucally from botom to top
    }
}

let currentEmployee=Employee(firstName: "Nestor", lastName: "León", phoneNumber: "536363645")
let selectedEmployee=Employee(firstName: "Gabriel", lastName: "Mendoza", phoneNumber: "536wertw645")
print("Equatable result example")
if currentEmployee==selectedEmployee {
    print("you can edit")
}else{
    print("you can not edit")
}

//Codable protocol

struct sensor:Equatable, Comparable, Codable {      //when using comparable //protocol, its necesary to adopt Equatable protocol too and to add de operator
    // < in te return of the fuction
    var Name: String
    var messure: String
    var comunication: String
    
    static func < (lhs: sensor, rhs: sensor)-> Bool {
        return lhs.Name > rhs.Name
        //lhs and rhs indicates comparation from the left and rigth side
        //operator < sort string alphabetically from top to botom, > sort
        //strings alphabetucally from botom to top
    }
}

let sensor1=sensor(Name: "BMI160", messure: "Acelerometer", comunication: "SPI")
let sensor2=sensor(Name: "bmp280", messure: "Temperature", comunication: "I2C")
let sensors=[sensor1,sensor2]
let sortedSensors = sensors.sorted(by: <)
print("Comparable result example")
print(sortedSensors)




