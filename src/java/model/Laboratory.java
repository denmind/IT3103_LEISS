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

    private final int LAB_DATA_MAX = 20;

    private final int def_lab_id = 0;
    private final String def_lab_name = "Laboratory";
    private final String def_lab_in_charge = "Student";

    private int lab_id; //provided
    private String lab_name; //e.g. LB465 or ES001
    private String lab_in_charge;

    private final ArrayList<List> lab_list;
    private final ArrayList<Log> lab_log;
    private UserCredentials lab_uc;

    private static Laboratory instance;

    public Laboratory() {
        this.lab_list = new ArrayList<>();
        this.lab_uc = new UserCredentials();
        this.lab_log = new ArrayList<>();

        this.lab_id = def_lab_id;
        this.lab_name = def_lab_name;
        this.lab_in_charge = def_lab_in_charge;
    }

    public Laboratory(int lab_id, String lab_name, String lab_in_charge, String username, String password) {
        this.lab_id = lab_id;
        this.lab_name = lab_name;
        this.lab_in_charge = lab_in_charge;
        this.lab_list = new ArrayList<>();
        this.lab_log = new ArrayList<>();
        this.lab_uc = new UserCredentials(username, password);
        Laboratory.instance = this;
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

    public UserCredentials getLab_uc() {
        return lab_uc;
    }

    public ArrayList<Log> getLab_log() {
        return lab_log;
    }

    public void setLab_uc(UserCredentials lab_uc) {
        this.lab_uc = lab_uc;
    }

    public ArrayList<List> getLab_list() {
        return lab_list;
    }

    public void populate_Log() {
        int[] log_ids = new int[LAB_DATA_MAX];
        String[] log_names = new String[LAB_DATA_MAX];
        String[] log_descriptions = new String[LAB_DATA_MAX];

        for (int X = 0; X < LAB_DATA_MAX; X++) {
            log_ids[X] = X + 1;
        }

        log_names[0] = "John McKain";
        log_names[1] = "John McKain";
        log_names[2] = "John McKain";
        log_names[3] = "John McKain";
        log_names[4] = "John McKain";
        log_names[5] = "John McKain";
        log_names[6] = "John McKain";
        log_names[7] = "John McKain";
        log_names[8] = "John McKain";
        log_names[9] = "John McKain";
        log_names[10] = "John McKain";
        log_names[11] = "John McKain";
        log_names[12] = "John McKain";
        log_names[13] = "John McKain";
        log_names[14] = "John McKain";
        log_names[15] = "John McKain";
        log_names[16] = "John McKain";
        log_names[17] = "John McKain";
        log_names[18] = "John McKain";
        log_names[19] = "John McKain";

        log_descriptions[0] = "Added Item.";
        log_descriptions[1] = "Added Item.";
        log_descriptions[2] = "Added Item.";
        log_descriptions[3] = "Added Item.";
        log_descriptions[4] = "Added Item.";
        log_descriptions[5] = "Added Item.";
        log_descriptions[6] = "Added Item.";
        log_descriptions[7] = "Added Item.";
        log_descriptions[8] = "Added Item.";
        log_descriptions[9] = "Added Item.";
        log_descriptions[10] = "Added Item.";
        log_descriptions[11] = "Added Item.";
        log_descriptions[12] = "Added Item.";
        log_descriptions[13] = "Added Item.";
        log_descriptions[14] = "Added Item.";
        log_descriptions[15] = "Added Item.";
        log_descriptions[16] = "Added Item.";
        log_descriptions[17] = "Added Item.";
        log_descriptions[18] = "Added Item.";
        log_descriptions[19] = "Added Item.";

        for (int X = 0; X < LAB_DATA_MAX; X++) {
            lab_log.add(new Log(log_ids[X], log_names[X], log_descriptions[X]));
        }

    }

    public static synchronized Laboratory getInstance() {
        if (instance == null) {
            instance = new Laboratory();

        }
        return instance;
    }
}
