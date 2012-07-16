package tigerloaf.detail

import tigerloaf.item.Equipment
import tigerloaf.item.Server


class Project {

    String name
    
    static belongsTo = [customer: Customer]
    
    static hasMany = [equipment: Equipment, servers:Server]
    
    static constraints = {
        name(blank:false, nullable: false, unique:true, maxSize: 100)
        customer(nullable: false)
        equipment(nullable: true)
        servers(nullable:true)
    }
    
    @Override
    String toString(){
        return name
    }
}
