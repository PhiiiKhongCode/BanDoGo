/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package views;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import java.io.File;
import java.nio.file.Paths;
import java.util.List;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import services.ChiTietDoGoService;
import services.HoaDonBanHangService;
import services.HoadonService;
import services.QRHoaDonService;
import services.impl.IManageChiTietDoGoService;
import services.impl.IManageHoaDonBanHangService;
import services.impl.IManageHoaDonService;
import services.impl.IManageQRHoaDonService;
import viewModel.ChiTietDoGoViewModel;
import viewModel.ViewModelHoaDonBanHang;
import viewModel.ViewModelQRHoaDon;
import viewModel.ViewModelSanPham;

/**
 *
 * @author admin
 */
public class CreateQR extends javax.swing.JFrame {

    private IManageChiTietDoGoService chiTietSv = new ChiTietDoGoService();
    private IManageHoaDonService hdSv = new HoadonService();
    private IManageHoaDonBanHangService hdBanHangSv = new HoaDonBanHangService();

    private IManageQRHoaDonService qr = new QRHoaDonService();
    DefaultTableModel model = new DefaultTableModel();

    /**
     * Creates new form CreateQR
     */
    public CreateQR() {
        initComponents();
        this.setLocationRelativeTo(null);
        loadChiTiet();
//        loadHoaDon();
        loadHoaDon();
    }

    public void loadChiTiet() {

        model = (DefaultTableModel) tbChiTiet.getModel();
        model.setRowCount(0);
        List<ChiTietDoGoViewModel> lsp = chiTietSv.list();
        for (ChiTietDoGoViewModel sp : lsp) {
            model.addRow(new Object[]{
                sp.getId(), sp.getTensp(), sp.getGiaBan(), sp.getGiaNhap()
            });
        }

    }

    public void loadHoaDon() {
        
        model = (DefaultTableModel) tbHD.getModel();
        model.setRowCount(0);
        List<ViewModelQRHoaDon> lsp = qr.getList();
        for (ViewModelQRHoaDon sp : lsp) {
            model.addRow(new Object[]{
                sp.getId(), sp.getMa(), sp.getNgayThanhToan(), sp.getTenNV()
            });
        }

    }

//    public void loadHoaDon() {
//
//        model = (DefaultTableModel) tbHD.getModel();
//        model.setRowCount(0);
//        List<ViewModelHoaDonBanHang> lsp = hdBanHangSv.getList();
//        for (ViewModelHoaDonBanHang sp : lsp) {
//            model.addRow(new Object[]{
//                sp.getId(),sp.getMa(),sp.getNgayTao(),sp.getTenNV()
//            });
//        }
//
//    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pagination1 = new pagination.Pagination();
        jTabbedPane3 = new javax.swing.JTabbedPane();
        jPanel3 = new javax.swing.JPanel();
        pagination3 = new pagination.Pagination();
        txtIdHD = new javax.swing.JTextField();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbHD = new javax.swing.JTable();
        btnQRHoaDon1 = new javax.swing.JButton();
        btnback = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        txtIDChiTiet = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbChiTiet = new javax.swing.JTable();
        btnQRChiTiet = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jTabbedPane3.setBorder(new javax.swing.border.MatteBorder(null));

        jPanel3.setBackground(new java.awt.Color(204, 204, 204));

        pagination3.setOpaque(false);

        txtIdHD.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0))));

        tbHD.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "ID", "Mã", "Ngày Thanh Toán", "Tên NV"
            }
        ));
        tbHD.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbHDMouseClicked(evt);
            }
        });
        jScrollPane3.setViewportView(tbHD);

        btnQRHoaDon1.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        btnQRHoaDon1.setText("Tạo QR");
        btnQRHoaDon1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnQRHoaDonActionPerformed(evt);
            }
        });

        btnback.setBackground(new java.awt.Color(255, 204, 204));
        btnback.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        btnback.setText("BACK");
        btnback.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0)));
        btnback.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbackActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 388, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                                .addComponent(pagination3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(280, 280, 280))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                                .addComponent(btnback, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(txtIdHD, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(btnQRHoaDon1)
                                .addGap(71, 71, 71))))))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(35, 35, 35)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtIdHD, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnQRHoaDon1)))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btnback, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(257, 257, 257)
                .addComponent(pagination3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jTabbedPane3.addTab("QR Hóa Đơn", jPanel3);

        jPanel4.setBackground(new java.awt.Color(255, 204, 204));
        jPanel4.setBorder(new javax.swing.border.MatteBorder(null));

        txtIDChiTiet.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0))));

        tbChiTiet.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "ID", "Tên SP", "Giá Bán", "Giá Nhập"
            }
        ));
        tbChiTiet.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbChiTietMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbChiTiet);

        btnQRChiTiet.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        btnQRChiTiet.setText("Tạo QR");
        btnQRChiTiet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnQRChiTietActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(txtIDChiTiet, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(55, 55, 55)
                        .addComponent(btnQRChiTiet))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 388, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(12, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtIDChiTiet, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnQRChiTiet))
                .addGap(34, 34, 34)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(37, Short.MAX_VALUE))
        );

        jTabbedPane3.addTab("QR Chi Tiết Đồ Gỗ", jPanel4);

        getContentPane().add(jTabbedPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 410, 340));
        jTabbedPane3.getAccessibleContext().setAccessibleName("Chức Vụ");

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnQRChiTietActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnQRChiTietActionPerformed
        // TODO add your handling code here:
        try {
            String data = txtIDChiTiet.getText();
            //            String path = "D:\\DuAnGitHub\\Qr.png";
            JFileChooser file = new JFileChooser();
            file.showOpenDialog(null);
            File f = file.getSelectedFile();

            BitMatrix matrix = new MultiFormatWriter()
            .encode(data, BarcodeFormat.QR_CODE, 500, 500);

            MatrixToImageWriter.writeToPath(matrix,
                "jpg", Paths.get(f + ".png"));
            JOptionPane.showMessageDialog(this, "Tạo QR thành công");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Tạo QR thất bại");
        }
    }//GEN-LAST:event_btnQRChiTietActionPerformed

    private void tbChiTietMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbChiTietMouseClicked
        // TODO add your handling code here:
        int index = tbChiTiet.getSelectedRow();
        txtIDChiTiet.setText(tbChiTiet.getValueAt(index, 0).toString());
    }//GEN-LAST:event_tbChiTietMouseClicked

    private void btnQRHoaDonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnQRHoaDonActionPerformed
        // TODO add your handling code here:
        try {
            String data = txtIdHD.getText();
            //            String path = "D:\\DuAnGitHub\\Qr.png";
            JFileChooser file = new JFileChooser();
            file.showOpenDialog(null);
            File f = file.getSelectedFile();

            BitMatrix matrix = new MultiFormatWriter()
            .encode(data, BarcodeFormat.QR_CODE, 500, 500);

            MatrixToImageWriter.writeToPath(matrix,
                "jpg", Paths.get(f + ".png"));
            JOptionPane.showMessageDialog(this, "Tạo QR thành công");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Tạo QR thất bại");
        }
    }//GEN-LAST:event_btnQRHoaDonActionPerformed

    private void tbHDMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbHDMouseClicked
        // TODO add your handling code here:
        int index = tbHD.getSelectedRow();
        txtIdHD.setText(tbHD.getValueAt(index, 0).toString());
    }//GEN-LAST:event_tbHDMouseClicked

    private void btnbackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnbackActionPerformed

        this.dispose();
    }//GEN-LAST:event_btnbackActionPerformed

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
            java.util.logging.Logger.getLogger(CreateQR.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CreateQR.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CreateQR.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CreateQR.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CreateQR().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnQRChiTiet;
    private javax.swing.JButton btnQRHoaDon1;
    private javax.swing.JButton btnback;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTabbedPane jTabbedPane3;
    private pagination.Pagination pagination1;
    private pagination.Pagination pagination3;
    private javax.swing.JTable tbChiTiet;
    private javax.swing.JTable tbHD;
    private javax.swing.JTextField txtIDChiTiet;
    private javax.swing.JTextField txtIdHD;
    // End of variables declaration//GEN-END:variables
}
