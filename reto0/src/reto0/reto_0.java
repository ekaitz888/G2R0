package reto0;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.ButtonGroup;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.Color;
import java.awt.Font;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.swing.JRadioButton;
import javax.swing.JButton;

public class reto_0 implements ActionListener {

	private JFrame frame;
	private JRadioButton piso0;
	private JRadioButton piso1;
	private JRadioButton piso2;
	private ButtonGroup Pisos;
	private ImageIcon imagen;
	private JButton btn0_1;
	private JButton btn0_2;
	private JButton btn0_3;
	private JButton btn0_4;
	private JButton btn0_5;
	private JButton btn0_6;
	private JButton btn0_7;
	private JButton btn0_8;
	private JButton btn0_9;
	private JButton btn0_10;
	private JButton btn0_11;
	private JButton btn0_12;
	private JLabel Plano;
	private JPanel panel_0;
	private ArrayList<sala> AR_Salas = new ArrayList<sala>();
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					reto_0 window = new reto_0();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public void cargarSalas() {
		
		try {
			Connection konexioa = DriverManager.getConnection("jdbc:mysql://localhost/g2r0", "root", "");
			Statement st = konexioa.createStatement();
			ResultSet rse = st.executeQuery("call selectSala()");
			while (rse.next()) {
				sala objSala = new sala(rse.getObject("ID_Sala").toString(), rse.getObject("SalaNum").toString(), rse.getObject("Piso").toString());
						AR_Salas.add(objSala);
				
			}
			for (int i=0; i<AR_Salas.size();i++) {
				System.out.println(AR_Salas.get(i).getID_Sala()+" - "+AR_Salas.get(i).getSalaNum()+ " - "+AR_Salas.get(i).getPiso());
			}
			System.out.print("ENTRA");
			// ResultSet itxi
						rse.close();
						// Statement itxi kontsulta egin eta gero
						st.close();
						// konexioa itxi
						konexioa.close();

		}catch (SQLException sqle) {
			
		}
	}
	
	/**
	 * Create the application.
	 */
	public reto_0() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.getContentPane().setBackground(Color.WHITE);
		frame.setBounds(100, 100, 946, 781);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setResizable(false);
		JComboBox<String> comboBox = new JComboBox<String>();
		comboBox.setFont(new Font("Tahoma", Font.PLAIN, 20));
		comboBox.setModel(new DefaultComboBoxModel<String>(new String[] {"Calefaccion", "Alarma"}));
		comboBox.setSelectedIndex(0);
		comboBox.setBackground(Color.WHITE);
		comboBox.setBounds(31, 24, 420, 57);
		frame.getContentPane().add(comboBox);
		
		panel_0 = new JPanel();
		panel_0.setBackground(Color.WHITE);
		panel_0.setBounds(128, 118, 747, 533);
		frame.getContentPane().add(panel_0);
		panel_0.setLayout(null);
		
		btn0_1 = new JButton("1");
		btn0_1.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_1.setBackground(Color.GREEN);
		btn0_1.setBounds(132, 55, 76, 77);
		panel_0.add(btn0_1);
		
		btn0_2 = new JButton("2");
		btn0_2.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_2.setBackground(Color.RED);
		btn0_2.setBounds(247, 55, 65, 76);
		panel_0.add(btn0_2);
		
		btn0_3 = new JButton("3");
		btn0_3.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_3.setBackground(Color.GREEN);
		btn0_3.setBounds(143, 207, 65, 50);
		panel_0.add(btn0_3);
		
		btn0_4 = new JButton("4");
		btn0_4.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_4.setBackground(Color.GREEN);
		btn0_4.setBounds(247, 226, 65, 77);
		panel_0.add(btn0_4);
		
		btn0_5 = new JButton("5");
		btn0_5.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_5.setBackground(Color.GREEN);
		btn0_5.setBounds(485, 44, 130, 33);
		panel_0.add(btn0_5);
		
		btn0_6 = new JButton("6");
		btn0_6.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_6.setBackground(Color.RED);
		btn0_6.setBounds(485, 104, 130, 33);
		panel_0.add(btn0_6);
		
		btn0_7 = new JButton("7");
		btn0_7.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_7.setBackground(Color.GREEN);
		btn0_7.setBounds(342, 35, 58, 50);
		panel_0.add(btn0_7);
		
		btn0_8 = new JButton("8");
		btn0_8.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_8.setBackground(Color.RED);
		btn0_8.setBounds(342, 100, 58, 41);
		panel_0.add(btn0_8);
		
		btn0_9 = new JButton("9");
		btn0_9.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_9.setBackground(Color.GREEN);
		btn0_9.setBounds(346, 328, 58, 44);
		panel_0.add(btn0_9);
		
		btn0_10 = new JButton("10");
		btn0_10.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_10.setBackground(Color.RED);
		btn0_10.setBounds(341, 383, 58, 50);
		panel_0.add(btn0_10);
		
		btn0_11 = new JButton("11");
		btn0_11.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_11.setBackground(Color.GREEN);
		btn0_11.setBounds(479, 328, 65, 44);
		panel_0.add(btn0_11);
		
		btn0_12 = new JButton("12");
		btn0_12.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btn0_12.setBackground(Color.GREEN);
		btn0_12.setBounds(485, 389, 65, 44);
		panel_0.add(btn0_12);
		
		imagen = new ImageIcon(getClass().getResource("Planta_Baja.png"));
		Plano = new JLabel(imagen);
		Plano.setIcon(new ImageIcon(imagen.getImage().getScaledInstance(700, 500, Image.SCALE_SMOOTH)));
		Plano.setBounds(10, 10, 727, 486);
		panel_0.add(Plano);
		

		
		
		
		
		
		
		
		cargarSalas();
		piso0 = new JRadioButton("Planta Baja");
		piso0.setSelected(true);
		piso0.setBackground(Color.WHITE);
		piso0.setBounds(769, 24, 103, 21);
		frame.getContentPane().add(piso0);
		piso0.addActionListener( this);
		
		piso1 = new JRadioButton("Planta 1");
		piso1.setBackground(Color.WHITE);
		piso1.setBounds(769, 60, 103, 21);
		frame.getContentPane().add(piso1);
		piso1.addActionListener( this);
		
		piso2 = new JRadioButton("Planta 2");
		piso2.setBackground(Color.WHITE);
		piso2.setBounds(769, 96, 103, 21);
		frame.getContentPane().add(piso2);
		piso2.addActionListener(this);
		
		Pisos = new ButtonGroup();
		Pisos.add(piso0);
		Pisos.add(piso1);
		Pisos.add(piso2);
		
		
		
		
		

		
		
		
		
	}
	
	

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(piso0.isSelected()) {
			panel_0.setVisible(true);
			imagen = new ImageIcon(getClass().getResource("Planta_Baja.png"));
			Plano.setIcon(new ImageIcon(imagen.getImage().getScaledInstance(Plano.getWidth(), Plano.getHeight(), Image.SCALE_DEFAULT)));
		}else if(piso1.isSelected()) {
			panel_0.setVisible(false);
			imagen = new ImageIcon(getClass().getResource("piso1.png"));
			Plano.setIcon(new ImageIcon(imagen.getImage().getScaledInstance(Plano.getWidth(), Plano.getHeight(), Image.SCALE_DEFAULT)));
		}else {
			imagen = new ImageIcon(getClass().getResource("piso2.png"));
			Plano.setIcon(new ImageIcon(imagen.getImage().getScaledInstance(Plano.getWidth(), Plano.getHeight(), Image.SCALE_DEFAULT)));
		}
	}
}
