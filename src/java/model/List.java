/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author pc-user
 */
public class List {

    private final ArrayList<Item> lab_items;
    private final ArrayList<Item_State> item_states;

    public List() {
        this.lab_items = new ArrayList<>();
        this.item_states = new ArrayList<>();
        this.processItemStates();
    }

    public ArrayList<Item> getLab_items() {
        return lab_items;
    }

    public ArrayList<Item_State> getItem_states() {
        return item_states;
    }

    public void processItemStates() {
        /**
         * Order will reflect in select option in equipments-all* Add Item State
         * here
         */

        item_states.add(new Item_Normal());
        item_states.add(new Item_Borrowed());
        item_states.add(new Item_Damaged());
    }
}
