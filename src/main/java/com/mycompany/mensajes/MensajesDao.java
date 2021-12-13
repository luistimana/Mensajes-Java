/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mensajes;

import java.sql.*;
import java.util.*;
import static com.mycompany.mensajes.Conexion.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luis Timana
 */
public class MensajesDao {
    
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private Mensaje mensaje;
    
    public List<Mensaje> seleccionar() throws SQLException{
        String sql = "Select * from mensajes";
        List<Mensaje> mensajes = new ArrayList<>();
            
        try {           
            
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.rs = this.ps.executeQuery();
            
            while(this.rs.next()){
                int id = this.rs.getInt("id_mensaje");
                String msm = this.rs.getString("mensaje");
                String autor = this.rs.getString("autor");
                String fecha = this.rs.getString("fecha");
                
                this.mensaje = new Mensaje(id, msm, autor, fecha);
                mensajes.add(this.mensaje);
            }
        } catch (ClassNotFoundException ex) {
            
            ex.printStackTrace(System.out);
        
        } finally {
            try {
                cerrar(this.rs);
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return mensajes;
    }
    
    public int insertar(Mensaje mensaje) throws SQLException{
        String sql = "INSERT INTO mensajes(mensaje, autor, fecha) VALUES (?, ?,CURRENT_TIME());";
        int registros = 0;            
        try {           
            
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            
            this.ps.setString(1, mensaje.getMensaje());
            this.ps.setString(2, mensaje.getAutor());
            registros = this.ps.executeUpdate();
            
        } catch (ClassNotFoundException ex) {
            
            ex.printStackTrace(System.out);
        
        } finally {
            try {
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
    }

    public int editar(Mensaje mensaje) throws SQLException{
        String sql = "UPDATE mensajes SET mensaje=?, autor=? WHERE id_mensaje=?;";
        int registros = 0;            
        try {           
            
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            
            this.ps.setString(1, mensaje.getMensaje());
            this.ps.setString(2, mensaje.getAutor());
            this.ps.setInt(3, mensaje.getId());
            registros = this.ps.executeUpdate();
            
        } catch (ClassNotFoundException ex) {
            
            ex.printStackTrace(System.out);
        
        } finally {
            try {
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
    }
    
}
