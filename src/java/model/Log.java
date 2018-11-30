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
    private String log_date;
    private String log_name;
    private String log_description;

    public Log(String log_date, String log_name, String log_description) {
        this.log_date = log_date;
        this.log_name = log_name;
        this.log_description = log_description;
    }
    
   

    public String getLog_date() {
        return log_date;
    }

    public void setLog_date(String log_date) {
        this.log_date = log_date;
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
