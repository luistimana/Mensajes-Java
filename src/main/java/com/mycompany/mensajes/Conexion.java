/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mensajes;

import java.sql.*;

/**
 *
 * @author Luis Timana
 */
public class Conexion {
    
    private static final String url = "jdbc:mysql://localhost/mensajes_db?serverTimezone=UTC";
    private static final String user = "root";
    private static final String pass = "secret";
    
    public static Connection getConexion() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url,user,pass);
    }
    
    public static void cerrar(ResultSet rs) throws SQLException{
        rs.close();
    }
    
    public static void cerrar(PreparedStatement ps) throws SQLException{
        ps.close();
    }
    
    public static void cerrar(Connection con) throws SQLException{
        con.close();
    }
}
