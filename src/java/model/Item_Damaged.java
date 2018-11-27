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
public class Item_Damaged implements Item_State{

    @Override
    public void changeState(Item I) {
        I.setItem_state(new Item_Damaged());
    }
    
    @Override
    public String showState() {
        return "Damaged";
    }
}
