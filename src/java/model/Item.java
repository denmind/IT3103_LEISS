/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author pc-user
 */
public class Item {
    
    private String item_serial_no;
    private String item_name;
    private String item_date_added;
    private Item_State item_state;
    
    private Student item_stud; // Student  who borrowed/damaged the Equipment
    private String item_date_special; //Date when it was borrowed/damaged

    public Item_State getItem_state() {
        return item_state;
    }
    
    public void setItem_state(Item_State item_state) {
        this.item_state = item_state;
    }
    
    public Item(String item_serial_no, String item_name, String item_date_added) {
        this.item_serial_no = item_serial_no;
        this.item_name = item_name;
        this.item_date_added = item_date_added;
        this.item_stud = new Student("None");
        this.item_date_special = "";
        this.item_state = new Item_Normal();
    }
    
    public String getItem_serial_no() {
        return item_serial_no;
    }
    
    public String getItem_date_special() {
        return item_date_special;
    }
    
    public void setItem_date_special(String item_date_special) {
        this.item_date_special = item_date_special;
    }
    
    public void setItem_serial_no(String item_serial_no) {
        this.item_serial_no = item_serial_no;
    }
    
    public String getItem_name() {
        return item_name;
    }
    
    public void setItem_name(String item_name) {
        this.item_name = item_name;
    }
    
    public String getItem_date_added() {
        return item_date_added;
    }
    
    public void setItem_date_added(String item_date_added) {
        this.item_date_added = item_date_added;
    }
    
    public Student getItem_stud() {
        return item_stud;
    }
    
    public void setItem_stud(Student item_stud) {
        this.item_stud = item_stud;
    }
    
    @Override
    public String toString() {
        return "Item{" + "item_serial_no=" + item_serial_no + ", item_name=" + item_name + ", item_date_added=" + item_date_added + ", item_state=" + item_state + ", item_stud=" + item_stud + ", item_date_special=" + item_date_special + '}';
    }
    
    public boolean serialAndNameIsEmpty() {
        return (item_serial_no.equals("") || item_name.equals(""));
    }
}
