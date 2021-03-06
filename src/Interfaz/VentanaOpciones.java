/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaz;

/**
 *
 * @author megan
 */
public class VentanaOpciones extends javax.swing.JFrame {

    /**
     * Creates new form VentanaOpciones
     */
    public VentanaOpciones() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        lblJEM = new javax.swing.JLabel();
        btnMantenimiento = new javax.swing.JButton();
        btnRolSC = new javax.swing.JButton();
        btnClientes = new javax.swing.JButton();
        btnEmpresa = new javax.swing.JButton();
        btnEditar = new javax.swing.JButton();
        btnBuscar = new javax.swing.JButton();
        btnVehiculos = new javax.swing.JButton();
        lblOpciones = new javax.swing.JLabel();
        lblRegistarCliente = new javax.swing.JLabel();
        lblAgregarVehiculo = new javax.swing.JLabel();
        lblRealizarReserva = new javax.swing.JLabel();
        lblRegistrarServicio = new javax.swing.JLabel();
        lblEditInformacion = new javax.swing.JLabel();
        lblConsultarReserva = new javax.swing.JLabel();
        lblRegistrarRol = new javax.swing.JLabel();
        lblVehiculo = new javax.swing.JLabel();
        lblMantenimiento = new javax.swing.JLabel();
        btnReserva1 = new javax.swing.JButton();
        lblRegistrarEmpresa = new javax.swing.JLabel();
        lbldeServicio = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(51, 127, 204), 5));

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(51, 127, 204), 3));

        lblJEM.setBackground(new java.awt.Color(255, 255, 255));
        lblJEM.setFont(new java.awt.Font("Gill Sans Ultra Bold", 0, 48)); // NOI18N
        lblJEM.setForeground(new java.awt.Color(51, 127, 204));
        lblJEM.setText("Rent a car JEM");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(40, Short.MAX_VALUE)
                .addComponent(lblJEM)
                .addGap(32, 32, 32))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(lblJEM)
                .addContainerGap(23, Short.MAX_VALUE))
        );

        btnMantenimiento.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/mantenimiento_opt.png"))); // NOI18N
        btnMantenimiento.setBorderPainted(false);
        btnMantenimiento.setContentAreaFilled(false);
        btnMantenimiento.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnMantenimiento.setIconTextGap(-3);

        btnRolSC.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/rol SC_opt.png"))); // NOI18N
        btnRolSC.setBorderPainted(false);
        btnRolSC.setContentAreaFilled(false);
        btnRolSC.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnRolSC.setIconTextGap(-3);

        btnClientes.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/clientes_opt.png"))); // NOI18N
        btnClientes.setBorderPainted(false);
        btnClientes.setContentAreaFilled(false);
        btnClientes.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnClientes.setIconTextGap(-3);

        btnEmpresa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/empresa_opt.png"))); // NOI18N
        btnEmpresa.setBorderPainted(false);
        btnEmpresa.setContentAreaFilled(false);
        btnEmpresa.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnEmpresa.setIconTextGap(-3);

        btnEditar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/edit-flat_opt.png"))); // NOI18N
        btnEditar.setBorderPainted(false);
        btnEditar.setContentAreaFilled(false);
        btnEditar.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnEditar.setIconTextGap(-3);

        btnBuscar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/consultar_opt.png"))); // NOI18N
        btnBuscar.setBorderPainted(false);
        btnBuscar.setContentAreaFilled(false);
        btnBuscar.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnBuscar.setIconTextGap(-3);

        btnVehiculos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/vehiculos_opt.png"))); // NOI18N
        btnVehiculos.setBorderPainted(false);
        btnVehiculos.setContentAreaFilled(false);
        btnVehiculos.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnVehiculos.setIconTextGap(-3);

        lblOpciones.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblOpciones.setText("Seleccione la opción que desea realizar");

        lblRegistarCliente.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblRegistarCliente.setText("Registrar un cliente");

        lblAgregarVehiculo.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblAgregarVehiculo.setText("Agregar un vehículo");

        lblRealizarReserva.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblRealizarReserva.setText("Realizar una reserva");

        lblRegistrarServicio.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblRegistrarServicio.setText("Registrar un servicio");

        lblEditInformacion.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblEditInformacion.setText("Editar información");

        lblConsultarReserva.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblConsultarReserva.setText("Consultar reserva");

        lblRegistrarRol.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblRegistrarRol.setText("Registrar un rol");

        lblVehiculo.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblVehiculo.setText("de un vehículo");

        lblMantenimiento.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblMantenimiento.setText("de mantenimiento");

        btnReserva1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/reserva_opt.png"))); // NOI18N
        btnReserva1.setBorderPainted(false);
        btnReserva1.setContentAreaFilled(false);
        btnReserva1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnReserva1.setIconTextGap(-3);

        lblRegistrarEmpresa.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lblRegistrarEmpresa.setText("Registrar una empresa");

        lbldeServicio.setFont(new java.awt.Font("Arial Narrow", 1, 18)); // NOI18N
        lbldeServicio.setText("de servicio");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(163, 163, 163))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(lblOpciones)
                .addGap(292, 292, 292))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(77, 77, 77)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(btnClientes)
                                    .addComponent(lblRegistarCliente))
                                .addGap(21, 21, 21)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(lblAgregarVehiculo)
                                    .addComponent(btnVehiculos)
                                    .addComponent(btnRolSC, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lblRealizarReserva, javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(btnReserva1, javax.swing.GroupLayout.Alignment.TRAILING))
                                .addGap(47, 47, 47)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lblRegistrarServicio)
                                    .addComponent(btnMantenimiento, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(btnEmpresa)
                                        .addComponent(lblMantenimiento))))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lblEditInformacion)
                                    .addComponent(btnEditar))
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGap(47, 47, 47)
                                        .addComponent(lblRegistrarRol))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGap(200, 200, 200)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(lblConsultarReserva)
                                            .addComponent(btnBuscar))))
                                .addGap(38, 38, 38)
                                .addComponent(lblRegistrarEmpresa)))
                        .addGap(124, 124, 124))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(lblVehiculo)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(lbldeServicio)
                        .addGap(174, 174, 174))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(27, 27, 27)
                .addComponent(lblOpciones)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(btnClientes))
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(17, 17, 17)
                                .addComponent(btnMantenimiento, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(btnVehiculos))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(30, 30, 30)
                        .addComponent(btnReserva1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblRealizarReserva)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(lblRegistarCliente)
                        .addComponent(lblRegistrarServicio)
                        .addComponent(lblAgregarVehiculo)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lblMantenimiento)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 9, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(9, 9, 9)
                        .addComponent(btnEditar)
                        .addGap(18, 18, 18)
                        .addComponent(lblEditInformacion)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblVehiculo))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(7, 7, 7)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnBuscar)
                            .addComponent(btnEmpresa))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblConsultarReserva)
                            .addComponent(lblRegistrarEmpresa))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lbldeServicio))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btnRolSC, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(lblRegistrarRol)))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(VentanaOpciones.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(VentanaOpciones.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(VentanaOpciones.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(VentanaOpciones.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VentanaOpciones().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBuscar;
    private javax.swing.JButton btnClientes;
    private javax.swing.JButton btnEditar;
    private javax.swing.JButton btnEmpresa;
    private javax.swing.JButton btnMantenimiento;
    private javax.swing.JButton btnReserva1;
    private javax.swing.JButton btnRolSC;
    private javax.swing.JButton btnVehiculos;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JLabel lblAgregarVehiculo;
    private javax.swing.JLabel lblConsultarReserva;
    private javax.swing.JLabel lblEditInformacion;
    private javax.swing.JLabel lblJEM;
    private javax.swing.JLabel lblMantenimiento;
    private javax.swing.JLabel lblOpciones;
    private javax.swing.JLabel lblRealizarReserva;
    private javax.swing.JLabel lblRegistarCliente;
    private javax.swing.JLabel lblRegistrarEmpresa;
    private javax.swing.JLabel lblRegistrarRol;
    private javax.swing.JLabel lblRegistrarServicio;
    private javax.swing.JLabel lblVehiculo;
    private javax.swing.JLabel lbldeServicio;
    // End of variables declaration//GEN-END:variables
}
