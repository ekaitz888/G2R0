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
import java.awt.Font;

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
		frame.setBounds(100, 100, 946, 781);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setResizable(false);
		JComboBox comboBox = new JComboBox();
		comboBox.setBackground(Color.WHITE);
		comboBox.setBounds(170, 24, 272, 57);
		frame.getContentPane().add(comboBox);
		
		JPanel panel = new JPanel();
		panel.setBackground(Color.WHITE);
		panel.setBounds(641, 13, 274, 707);
		frame.getContentPane().add(panel);
		panel.setLayout(null);
		
		Label_1 = new JLabel("1.");
		Label_1.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_1.setCursor(Cursor.getPredefinedCursor(Cursor.CROSSHAIR_CURSOR));
		Label_1.setBounds(12, 13, 56, 16);
		panel.add(Label_1);
		
		JLabel Label_2 = new JLabel("2.");
		Label_2.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_2.setBounds(12, 71, 56, 16);
		panel.add(Label_2);
		
		JLabel Label_3 = new JLabel("3.");
		Label_3.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_3.setBounds(12, 129, 56, 16);
		panel.add(Label_3);
		
		JLabel Label_4 = new JLabel("4.");
		Label_4.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_4.setBounds(12, 190, 56, 16);
		panel.add(Label_4);
		
		JLabel Label_5 = new JLabel("5.");
		Label_5.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_5.setBounds(12, 251, 56, 16);
		panel.add(Label_5);
		
		JLabel Label_6 = new JLabel("6.");
		Label_6.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_6.setBounds(12, 313, 56, 16);
		panel.add(Label_6);
		
		JLabel Label_7 = new JLabel("7.");
		Label_7.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_7.setBounds(12, 370, 56, 16);
		panel.add(Label_7);
		
		JLabel Label_8 = new JLabel("8.");
		Label_8.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_8.setBounds(12, 434, 56, 16);
		panel.add(Label_8);
		
		JLabel Label_9 = new JLabel("9.");
		Label_9.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_9.setBounds(12, 494, 56, 16);
		panel.add(Label_9);
		
		JLabel Label_10 = new JLabel("10.");
		Label_10.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_10.setBounds(12, 555, 56, 16);
		panel.add(Label_10);
		
		JLabel Label_11 = new JLabel("11.");
		Label_11.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_11.setBounds(12, 620, 56, 16);
		panel.add(Label_11);
		
		JLabel Label_12 = new JLabel("12.");
		Label_12.setFont(new Font("Tahoma", Font.PLAIN, 18));
		Label_12.setBounds(12, 678, 56, 16);
		panel.add(Label_12);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBounds(53, 4, 189, 38);
		panel.add(comboBox_1);
		
		JComboBox comboBox_1_1 = new JComboBox();
		comboBox_1_1.setBounds(53, 62, 189, 38);
		panel.add(comboBox_1_1);
		
		JComboBox comboBox_1_2 = new JComboBox();
		comboBox_1_2.setBounds(53, 120, 189, 38);
		panel.add(comboBox_1_2);
		
		JComboBox comboBox_1_3 = new JComboBox();
		comboBox_1_3.setBounds(53, 181, 189, 38);
		panel.add(comboBox_1_3);
		
		JComboBox comboBox_1_4 = new JComboBox();
		comboBox_1_4.setBounds(53, 242, 189, 38);
		panel.add(comboBox_1_4);
		
		JComboBox comboBox_1_5 = new JComboBox();
		comboBox_1_5.setBounds(53, 304, 189, 38);
		panel.add(comboBox_1_5);
		
		JComboBox comboBox_1_6 = new JComboBox();
		comboBox_1_6.setBounds(53, 361, 189, 38);
		panel.add(comboBox_1_6);
		
		JComboBox comboBox_1_7 = new JComboBox();
		comboBox_1_7.setBounds(53, 425, 189, 38);
		panel.add(comboBox_1_7);
		
		JComboBox comboBox_1_8 = new JComboBox();
		comboBox_1_8.setBounds(53, 485, 189, 38);
		panel.add(comboBox_1_8);
		
		JComboBox comboBox_1_9 = new JComboBox();
		comboBox_1_9.setBounds(53, 546, 189, 38);
		panel.add(comboBox_1_9);
		
		JComboBox comboBox_1_9_1 = new JComboBox();
		comboBox_1_9_1.setBounds(53, 611, 189, 38);
		panel.add(comboBox_1_9_1);
		
		JComboBox comboBox_1_9_2 = new JComboBox();
		comboBox_1_9_2.setBounds(53, 669, 189, 38);
		panel.add(comboBox_1_9_2);
	}
}
