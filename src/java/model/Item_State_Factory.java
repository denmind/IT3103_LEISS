/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author User
 */
public class Item_State_Factory {

    public Item_State giveItem_State(List L, String item_State) {
        Item_State ret_IS = new Item_Normal(); //Default

        ArrayList<Item_State> item_State_Lists = L.getItem_states();

        for (Item_State iter_IS : item_State_Lists) {
            if (iter_IS.showState().equals(item_State)) {
                ret_IS = iter_IS;
            }
        }

        return ret_IS;
    }

}
