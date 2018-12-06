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
public class Item_Borrowed implements Item_State {

    @Override
    public void changeState(Item I) {
        I.setItem_state(new Item_Borrowed());
    }

    @Override
    public String showState() {
        return "Borrowed";
    }
}
