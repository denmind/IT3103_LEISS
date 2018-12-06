/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author User
 */
public class Item_Normal implements Item_State{

    @Override
    public void changeState(Item I) {
        I.setItem_state(new Item_Normal());
    }

    @Override
    public String showState() {
        return "Normal";
    }
    
    @Override
    public String showClassName() {
        return "Item_Normal";
    }
    
}
