package tigerloaf.detail

class Customer {
    
    String name
    
    static hasMany = [projects : Project]
    
    static constraints = {
        name(blank:false, nullable: false, unique:true, maxSize: 100)
        projects(nullable: true)
    }
    
    @Override
    String toString(){
        return name
    }
}
