/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mensajes;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Luis Timana
 */
public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        Conexion.getConexion();
//        System.out.println("Conexion exitosa");
         MensajesDao mensajeDao = new MensajesDao();
//         Mensaje msm = new Mensaje("Hola desde Main", "Main");
//         int registro = mensajeDao.insertar(msm);
//         
//         System.out.println("Se inserto " + registro + " registro.");
         Mensaje msm = new Mensaje(7, "Hola editado", "web");
         int registro = mensajeDao.insertar(msm);
         System.out.println("Se edito " + registro + " registro.");
         
         List<Mensaje> mensajes = mensajeDao.seleccionar();
         
         for (Mensaje mensaje : mensajes){
             System.out.println(mensaje);
         }
    }
}
