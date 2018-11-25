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

    private int list_id;

    private final ArrayList<Item> lab_items;

    public List(int list_id, String list_type) {
        this.lab_items = new ArrayList<>();
    }

    public ArrayList<Item> getLab_items() {
        return lab_items;
    }

}
