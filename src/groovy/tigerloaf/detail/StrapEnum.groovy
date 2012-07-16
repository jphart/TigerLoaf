/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package tigerloaf.detail

/**
 *
 * @author Jonathan
 */
enum StrapEnum {

    NONE("None"),
    STRAP1("Strap 1"),
    STRAP2("Strap 2"),
    STRAP3A("Strap 3A"),
    STRAP3B("Strap 3B");
    
    String name
    
    private StrapEnum(String name){
        this.name = name
    }
    
    String getName(){
        return name
    }

    
    @Override
    String toString(){
        return name
    }
}

