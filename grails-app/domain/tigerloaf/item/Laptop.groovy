package tigerloaf.item

import tigerloaf.detail.ClassificationEnum
import tigerloaf.detail.StrapEnum
import tigerloaf.detail.Manufacturer
import tigerloaf.detail.OperatingSystem
import tigerloaf.detail.Person

class Laptop {

    String name
    Person owner
    ClassificationEnum classification
    Manufacturer manufacturer
    String model
    String serialNo
    OperatingSystem os
    String adminUsername
    String adminPassword
    String trueCryptPassword
    String comments

    
    
    static belongsTo = [manufacturer: Manufacturer, owner: Person]

    static constraints = {
        name(nullable: false, blank: false, maxSize: 150, unique: true)
        owner(nullable: false)
        classification(nullable: false)
        manufacturer(nullable:false)
        model(blank: false, nullable: false, maxSize: 150)
        serialNo(blank: false, nullable: false, maxSize: 150, unique: true)
        os(nullable: false)
        adminUsername(blank: false, nullable: false, maxSize: 150)
        adminPassword(blank: false, nullable: false, maxSize: 150)
        trueCryptPassword(blank: true, nullable: false, maxSize: 150)
        comments(blank: true, nullable: false, maxSize: 255)
    }
    
    @Override
    String toString(){
        return name
    }
}
