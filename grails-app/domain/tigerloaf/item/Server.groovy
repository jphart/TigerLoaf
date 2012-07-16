package tigerloaf.item

import tigerloaf.detail.Manufacturer
import tigerloaf.detail.Location
import tigerloaf.detail.Person
import tigerloaf.detail.Project

class Server {
    
    Boolean investigate
    String machineType
    String hostname
    String history
    
     Boolean bin
    String description
    Date dateBought
    String serialNumber
    String function
    Location location
    String detailedLocation
    String comments
    Person purchaser
    Project project
    Person owner
    
    
    static belongsTo = [manufacturer: Manufacturer,project: Project, owner: Person]

    static constraints = {
        investigate(nullable: false)
        machineType(blank:false, nullable: false, maxSize: 150)
        hostname(blank:true, nullable: false, maxSize: 150) //Might not be configured yet
        history(blank:true, nullable: false, maxSize: 255)
        
        bin(nullable:false)
        description(blank: true, nullable:false, maxSize: 255)
        dateBought(nullable:false)
        serialNumber(blank: false, nullable:false, maxSize: 150)
        function(blank: true, nullable: false, maxSize: 255)
        location(nullable: false)
        detailedLocation(blank: true, nullable:false, maxSize: 150)
        comments(blank: true, nullable:false, maxSize: 255)
        owner(nullable: false)
        purchaser(nullable: false)
        project(nullable:false)
    }
    
    
    @Override
    String toString(){
        return hostname
    }
}
