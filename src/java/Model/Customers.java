/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.spi.DirStateFactory;

/**
 *
 * @author thaim
 */
public class Customers {

    public Customers() {

    }

    public boolean checkLogin(String user, String pass) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://Localhost:1433;databaseName=ASM_PS05928";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Customers where Username=? and Password=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            boolean exist = false;
            exist = rs.next();
            rs.close();
            stm.close();
            con.close();
            if (exist) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
//phan quyen

    public boolean checkAdmin(String user) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://Localhost:1433;databaseName=ASM_PS05928";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Customers where Username=? ";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, user);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                boolean ad = rs.getBoolean("Role");
                if (ad == true) {
                    return true;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
