/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author User
 */
public class UserCredentials {

    private String username;
    private String password;

    public UserCredentials() {
        this.username = "";
        this.password = "";
    }

    public UserCredentials(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void settleUC() {
        if (username == null) {
            username = "student";
        }
        if (password == null) {
            password = "student";
        }
    }
}
