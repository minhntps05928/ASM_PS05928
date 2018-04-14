/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thaim
 */
public class Products {

    public Products() {
    }

    public boolean delete(String masp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://Localhost:1433;databaseName=ASM_PS05928";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "delete from Products where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if( result >0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void insert(String masp, String tensp, float gia) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://Localhost:1433;databaseName=ASM_PS05928";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into Products value(?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.setString(2, tensp);
            stm.setFloat(3, gia);
            stm.executeUpdate();
            stm.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(String masp, String tensp, float gia) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://Localhost:1433;databaseName=ASM_PS05928";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "update Products set Name=?, Price=? where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, tensp);
            stm.setFloat(2, gia);
            stm.setString(3, masp);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> showProduct(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");           
            String url = "jdbc:sqlserver://Localhost:1433;databaseName=ASM_PS05928";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Products";
            if (tensp.length() > 0) {
                sql += " where Name like '%" + tensp + "%'";
            }
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("code");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                String image = rs.getString("Image");
                Product sp = new Product(code, name, price, image);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
