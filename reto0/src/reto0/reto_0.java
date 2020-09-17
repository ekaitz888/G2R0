package reto0;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.SpringLayout;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
import java.awt.Color;
import java.awt.Cursor;

public class reto_0 {

	private JFrame frame;
	private JLabel Label_1;

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
		frame.setBounds(100, 100, 946, 768);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBackground(Color.WHITE);
		comboBox.setBounds(170, 24, 272, 57);
		frame.getContentPane().add(comboBox);
		
		JLabel Plano = new JLabel("");
		Plano.setIcon(new ImageIcon(reto_0.class.getResource("/reto0/unknown.png")));
		Plano.setBounds(12, 252, 685, 416);
		frame.getContentPane().add(Plano);
		
		JPanel panel = new JPanel();
		panel.setBackground(Color.WHITE);
		panel.setBounds(642, 111, 274, 597);
		frame.getContentPane().add(panel);
		panel.setLayout(null);
		
		Label_1 = new JLabel("1.");
		Label_1.setCursor(Cursor.getPredefinedCursor(Cursor.CROSSHAIR_CURSOR));
		Label_1.setBounds(12, 13, 56, 16);
		panel.add(Label_1);
		
		JLabel lblNewLabel = new JLabel("New label");
		lblNewLabel.setBounds(194, 277, 56, 16);
		frame.getContentPane().add(lblNewLabel);
	}
}
