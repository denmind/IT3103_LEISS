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
    private int item_serial_no;
    private String item_name;
    private String item_date_added;
    
    private Student item_stud; // Student  who borrowed the Equipment

    public Item(int item_serial_no, String item_name, String item_date_added) {
        this.item_serial_no = item_serial_no;
        this.item_name = item_name;
        this.item_date_added = item_date_added;
        this.item_stud = null;
    }

    public int getItem_serial_no() {
        return item_serial_no;
    }

    public void setItem_serial_no(int item_serial_no) {
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
    
    
    
    
}
