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
public class Log {
    private int log_id;
    private String log_name;
    private String log_description;

    public Log(int log_id, String log_name, String log_description) {
        this.log_id = log_id;
        this.log_name = log_name;
        this.log_description = log_description;
    }
    
   

    public int getLog_id() {
        return log_id;
    }

    public void setLog_id(int log_id) {
        this.log_id = log_id;
    }

    public String getLog_name() {
        return log_name;
    }

    public void setLog_name(String log_name) {
        this.log_name = log_name;
    }

    public String getLog_description() {
        return log_description;
    }

    public void setLog_description(String log_description) {
        this.log_description = log_description;
    }

    
    
}
