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
    private ListType list_id;
    private String list_type;
    
    private final ArrayList<Item> lab_items;

    private enum ListType{
        NORMAL, BORROWED, DAMAGED;
        /*
            Lookup #LEISS-3103-Mod.txt for definitions.
        */
    }
    
    public List(ListType list_id, String list_type) {
        this.list_id = list_id;
        this.list_type = list_type;
        this.lab_items = new ArrayList<>();
    }

    public ArrayList<Item> getLab_items() {
        return lab_items;
    }

    public ListType getList_id() {
        return list_id;
    }

    public void setList_id(ListType list_id) {
        this.list_id = list_id;
    }

    public String getList_type() {
        return list_type;
    }

    public void setList_type(String list_type) {
        this.list_type = list_type;
    }

    
}
