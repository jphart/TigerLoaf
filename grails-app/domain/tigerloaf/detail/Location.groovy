package tigerloaf.detail

import tigerloaf.item.Equipment
import tigerloaf.item.Server

class Location {

    String name
    
    static hasMany = [equipment : Equipment, servers: Server]
    
    static constraints = {
        name(blank:false, nullable:false, unique:true)
        equipment(nullable:true)
        servers(nullable:true)
    }
    
    @Override
    String toString(){
        return name
    }
}
