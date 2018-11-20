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
public class Laboratory {
    private int lab_id; //system provided
    private String lab_name; //e.g. LB465 or ES001
    private String lab_in_charge;
    
    
    private final ArrayList<List>lab_list;
    private Log lab_log;

    public Laboratory(int lab_id, String lab_name, String lab_in_charge) {
        this.lab_id = lab_id;
        this.lab_name = lab_name;
        this.lab_in_charge = lab_in_charge;
        this.lab_list = new ArrayList<>();
        this.lab_log = null;
    }

    public int getLab_id() {
        return lab_id;
    }

    public void setLab_id(int lab_id) {
        this.lab_id = lab_id;
    }

    public String getLab_name() {
        return lab_name;
    }

    public void setLab_name(String lab_name) {
        this.lab_name = lab_name;
    }

    public String getLab_in_charge() {
        return lab_in_charge;
    }

    public void setLab_in_charge(String lab_in_charge) {
        this.lab_in_charge = lab_in_charge;
    }

    public Log getLab_log() {
        return lab_log;
    }

    public void setLab_log(Log lab_log) {
        this.lab_log = lab_log;
    }

    public ArrayList<List> getLab_list() {
        return lab_list;
    }
    
   
    
    
}
