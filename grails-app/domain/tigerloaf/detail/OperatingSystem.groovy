package tigerloaf.detail

class OperatingSystem {

   
    String osVersion
    
    static belongsTo = [manufacturer : Manufacturer]
    
    static constraints = {
        manufacturer(nullable:false)
        osVersion(unique:true, blank:false, nullable:false, maxSize: 255)
    }
    
    @Override
    String toString(){
        return osVersion
    }
}
