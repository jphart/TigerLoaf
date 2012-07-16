package tigerloaf.detail

class Manufacturer {
    
    String name

    static constraints = {
        name(blank:false, nullable:false, unique: true, maxSize:255)
    }
    
    @Override
    String toString(){
        return name
    }
}
