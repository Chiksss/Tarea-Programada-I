/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Coneccion;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author megan
 */
public class JEMConeccion {
    private static Connection cn;
    
    public static Connection getConnection(){
      try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=JEM;user=sa;password=123");
      }  catch (Exception e){
         System.out.println("Error aqui: "+e.toString());
          cn = null;
      }
      return cn;
    }
    public static void main(String[] args){
        Connection pruebaCn = JEMConeccion.getConnection();
        if(pruebaCn != null){
            System.out.println("Conectado");
            System.out.println("" + pruebaCn);
        }
        else{
             System.out.println("Desconectado");   
        }
    }
}
