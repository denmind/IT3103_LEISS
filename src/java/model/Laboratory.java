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

    private final int def_lab_id = 0;
    private final String def_lab_name = "Laboratory";
    private final String def_lab_in_charge = "Student";

    private int lab_id; //provided
    private String lab_name; //e.g. LB465 or ES001
    private String lab_in_charge;

    private List lab_list;
    private final ArrayList<Log> lab_log;
    private UserCredentials lab_uc;

    private static Laboratory instance;

    public Laboratory() {
        this.lab_list = new List();
        this.lab_uc = new UserCredentials();
        this.lab_log = new ArrayList<>();

        this.lab_id = def_lab_id;
        this.lab_name = def_lab_name;
        this.lab_in_charge = def_lab_in_charge;

        populate_Log();
        populate_Item();
    }

    public Laboratory(int lab_id, String lab_name, String lab_in_charge, String username, String password) {
        this.lab_id = lab_id;
        this.lab_name = lab_name;
        this.lab_in_charge = lab_in_charge;
        this.lab_list = new List();
        this.lab_log = new ArrayList<>();
        this.lab_uc = new UserCredentials(username, password);
        Laboratory.instance = this;

        populate_Log();
        populate_Item();
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

    public List getLab_list() {
        return lab_list;
    }

    public void setLab_list(List lab_list) {
        this.lab_list = lab_list;
    }

    public static synchronized Laboratory getInstance() {
        if (instance == null) {
            instance = new Laboratory();

        }
        return instance;
    }

    public void populate_Log() {
        int LAB_DATA_MAX = 5;

        String[] log_dates = new String[LAB_DATA_MAX];
        String[] log_names = new String[LAB_DATA_MAX];
        String[] log_descriptions = new String[LAB_DATA_MAX];

        log_dates[0] = "";
        log_dates[1] = "";
        log_dates[2] = "";
        log_dates[3] = "";
        log_dates[4] = "";
        
        log_names[0] = "John McKain";
        log_names[1] = "John McKain";
        log_names[2] = "John McKain";
        log_names[3] = "John McKain";
        log_names[4] = "John McKain";

        log_descriptions[0] = "Added Item.";
        log_descriptions[1] = "Added Item.";
        log_descriptions[2] = "Added Item.";
        log_descriptions[3] = "Added Item.";
        log_descriptions[4] = "Added Item.";

        for (int X = 0; X < LAB_DATA_MAX; X++) {
            lab_log.add(new Log(log_dates[X], log_names[X], log_descriptions[X]));
        }

    }

    public void populate_Item() {
        int LAB_DATA_MAX = 15;
        int STUD_DATA_MAX = 7;

        int X = 0;
        int Y = 0;
        int Z = 0;

        String[] item_serial = new String[LAB_DATA_MAX];
        String[] item_name = new String[LAB_DATA_MAX];
        String[] item_date = new String[LAB_DATA_MAX];
        Student[] item_stud = new Student[STUD_DATA_MAX];
        String[] item_date_damaged = new String[STUD_DATA_MAX];

        item_serial[0] = "06965161";
        item_serial[1] = "34483086";
        item_serial[2] = "75469919";
        item_serial[3] = "14157618";
        item_serial[4] = "66566609";
        item_serial[5] = "76805319";
        item_serial[6] = "62818173";
        item_serial[7] = "25644685";
        item_serial[8] = "05944714";
        item_serial[9] = "66159205";
        item_serial[10] = "75422326";
        item_serial[11] = "60688056";
        item_serial[12] = "07840662";
        item_serial[13] = "37636585";
        item_serial[14] = "13371416";

        item_name[0] = "ERAFLASH S10 Flashpoint Tester";
        item_name[1] = "Dimatix Materials Printer DMP-2850";
        item_name[2] = "ERACHECK ECO";
        item_name[3] = "Masterflex L/S Variable-Speed Console Drives";
        item_name[4] = "TGA-2000A-40-EB High capacity Thermogravimetric Analyzer";
        item_name[5] = "Human beta-Amyloid (1-40) ELISA II";
        item_name[6] = "Human beta-Amyloid (1-40) ELISA";
        item_name[7] = "PCRmax Eco 48 Real-Time qPCR System";
        item_name[8] = "OT-2 Pipetting Robot";
        item_name[9] = "Aura® Elite Ductless Fume Hoods";
        item_name[10] = "Polypropylene Horizontal Laminar Flow Bench";
        item_name[11] = "AC600 Series Vertical Laminar Flow Workstations";
        item_name[12] = "Horizontal Laminar Flow Clean Benches";
        item_name[13] = "TripleTOF® 6600 Mass Spectrometer";
        item_name[14] = "X500B QTOF Mass Spectrometer";

        item_date[0] = "January 13, 2017";
        item_date[1] = "January 18, 2017";
        item_date[2] = "January 20, 2017";
        item_date[3] = "February 6, 2017";
        item_date[4] = "February 21, 2017";
        item_date[5] = "March 7, 2017";
        item_date[6] = "March 16, 2017";
        item_date[7] = "April 19, 2017";
        item_date[8] = "July 28, 2017";
        item_date[9] = "August 3, 2017";
        item_date[10] = "August 27, 2017";
        item_date[11] = "October 24, 2017";
        item_date[12] = "November 14, 2017";
        item_date[13] = "November 22, 2017";
        item_date[14] = "December 1, 2017";

        item_stud[0] = new Student("676208", "Mohammod Nava");
        item_stud[1] = new Student("129374", "Roscoe Knight");
        item_stud[2] = new Student("448521", "Amelia-Mae Zamora");
        item_stud[3] = new Student("317299", "Ines Jordan");
        item_stud[4] = new Student("933686", "Cassia Parks");
        item_stud[5] = new Student("278881", "Perry Cottrell");
        item_stud[6] = new Student("434131", "Krista Zavala");
        
        item_date_damaged[0] = "March 9, 2018";
        item_date_damaged[1] = "June 14, 2018";
        item_date_damaged[2] = "June 22, 2018";
        item_date_damaged[3] = "November 19, 2018";
        item_date_damaged[4] = "February 15, 2018";
        item_date_damaged[5] = "March 13, 2018";
        item_date_damaged[6] = "April 13, 2018";
        

        for ( ; X < LAB_DATA_MAX; X++) {
            Item data_Item = new Item(item_serial[X], item_name[X], item_date[X]);

            if (X > 7 && X <= 11) {
                data_Item.setItem_state(new Item_Borrowed());
                data_Item.setItem_stud(item_stud[Y]);
                data_Item.setItem_date_special(item_date_damaged[Y]);
                Y++;
                
            }

            if (X > 11 && X < LAB_DATA_MAX) {
                data_Item.setItem_state(new Item_Damaged());
                data_Item.setItem_stud(item_stud[Y]);
                data_Item.setItem_date_special(item_date_damaged[Y]);
                Y++;
            }

            lab_list.getLab_items().add(data_Item);
        }
    }
}
