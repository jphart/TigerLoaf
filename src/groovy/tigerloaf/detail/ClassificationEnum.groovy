/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package tigerloaf.detail

/**
 *
 * @author Jonathan
 */
enum ClassificationEnum {

    
    DEV("Development"),
    TEST("Test"),
    PERSONAL("Personal");

    
    String name
    
    private ClassificationEnum(String name){
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

