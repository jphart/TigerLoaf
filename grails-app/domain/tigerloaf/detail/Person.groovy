package tigerloaf.detail

import tigerloaf.item.Laptop
import tigerloaf.item.Server
import tigerloaf.item.Equipment

class Person {

    String name
    String phoneNumber
    
    static hasMany = [servers: Server, laptops: Laptop, equipment: Equipment]
    
    static mappedBy = [servers:"owner", equipment:"owner"]
    
    static constraints = {
        name(unique: true, nullable:false, blank:false)
        phoneNumber(nullable:true, size: 6..25)
        servers(nullable: true)
        laptops(nullable:true)
        equipment(nullable: true)
    }
    
    @Override
    String toString(){
        return name
    }
}
