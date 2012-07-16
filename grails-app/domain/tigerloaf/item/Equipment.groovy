package tigerloaf.item

import tigerloaf.detail.Location
import tigerloaf.detail.Person
import tigerloaf.detail.Project

class Equipment{
    
    String itemName
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
    
    static belongsTo = [project: Project, owner: Person]
    
    static constraints = {
        itemName(unique:true, blank: false, nullable:false, maxSize: 150)
        serialNumber(blank: false, nullable:false, maxSize: 150)
        owner(nullable: false)

        bin(nullable:false)
        
        
        description(blank: true, nullable:false, maxSize: 255)
        function(blank: true, nullable: false, maxSize: 255)
        
        dateBought(nullable:false)
   
        purchaser(nullable: false)
        project(nullable:false)
       
        location(nullable: false)
        detailedLocation(blank: true, nullable:false, maxSize: 150)

        comments(blank: true, nullable:false, maxSize: 255)
    }
    
    @Override
    String toString(){
        return itemName
    }
}
