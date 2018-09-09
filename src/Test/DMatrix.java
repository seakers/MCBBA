/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import java.util.HashMap;
import madkit.kernel.AgentAddress;

/**
 *
 * @author Ximo
 */
class DMatrix {
    HashMap<myBail, HashMap<myBail,Integer>> DMatrix = new HashMap();
    public void put(myBail myBail1, myBail myBail2, Integer value){
        updateHashMap(this.DMatrix,myBail1,myBail2,value);
  }
    public Integer get(myBail myBail1, myBail myBail2){
       return this.DMatrix.get(myBail1).get(myBail2);
    }
    private <T> void updateHashMap(HashMap<myBail, HashMap<myBail, T>> provisional, myBail bail1, myBail bail2, T number) {
                    HashMap<myBail,T> provisional2 = new HashMap();
                      try{
                      provisional2.putAll(provisional.get(bail1));
                      } catch (NullPointerException e){}
                      provisional2.put(bail2, number);
                      provisional.put(bail1, provisional2);
    }
}
