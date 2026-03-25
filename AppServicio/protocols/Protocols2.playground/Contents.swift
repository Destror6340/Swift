import UIKit
import Foundation

//Codable with JSON protocol
struct sensor:Equatable, Comparable, Codable {      //when using comparable protocol, its necesary to adopt Equatable protocol too and to add de operator
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
print("Json result example")
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(sensor1),
   let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
}

//creating a protocol
protocol FullyNamed {
    var fullName: String {get}
    
    func saySomething()
}

struct Person: FullyNamed {
    
    var firstName: String
    var lastName: String
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    func saySomething() {
        print(fullName)
    }
}

let person1 = Person(firstName: "Nestor", lastName: "Leon")
print("Creating new protocol result example")
person1.saySomething()



