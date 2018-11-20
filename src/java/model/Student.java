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
public class Student {
    private int stud_id;
    private String stud_name;

    public Student(int stud_id, String stud_name) {
        this.stud_id = stud_id;
        this.stud_name = stud_name;
    }

    public int getStud_id() {
        return stud_id;
    }

    public void setStud_id(int stud_id) {
        this.stud_id = stud_id;
    }

    public String getStud_name() {
        return stud_name;
    }

    public void setStud_name(String stud_name) {
        this.stud_name = stud_name;
    }
    
    
}
