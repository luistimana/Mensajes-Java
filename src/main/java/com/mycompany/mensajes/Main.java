/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mensajes;

import java.sql.SQLException;

/**
 *
 * @author Luis Timana
 */
public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Conexion.getConexion();
        System.out.println("Conexion exitosa");
    }
}
