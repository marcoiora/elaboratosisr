package org.shirthop;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.SpringLayout;
import javax.swing.SwingWorker;
import javax.xml.rpc.ServiceException;

import org.webml.www.webservices.wsdl.ServiziLocator;

import com.shirtshop.Servizi.Ordini.OrdiniOrdine;

public class MyFrame extends JFrame {
	
	private JComboBox cboListaOrdini;
	private JButton btnPrendiInCarico;
	
	public MyFrame() {
		
		final Preferences pref = Preferences.userNodeForPackage(getClass());
		
		SpringLayout sl = new SpringLayout();
		
		
		cboListaOrdini = new JComboBox();
		btnPrendiInCarico = new JButton("Prendi In Carico");
		
		btnPrendiInCarico.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				OrdiniOrdine o = (OrdiniOrdine) cboListaOrdini.getSelectedItem();
				try {
					boolean result = new ServiziLocator().getOrdini_Port().prendiInCarico(o.getOid(), 2);
					if (result) {
						JOptionPane.showMessageDialog(null, "Conferma! Preso in carico.");
					} else {
						JOptionPane.showMessageDialog(null, "Ahi ahi, errore in presa in carico d'ordine.");
					}
					
				} catch (RemoteException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (ServiceException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				updateCboListaOrdini();
			}
		});
		
		updateCboListaOrdini();
		
		getContentPane().add(cboListaOrdini);
		sl.putConstraint(sl.NORTH, cboListaOrdini, 20, sl.NORTH, getContentPane());
		sl.putConstraint(sl.NORTH, btnPrendiInCarico, 20, sl.NORTH, getContentPane());
		sl.putConstraint(sl.WEST, cboListaOrdini, 20, sl.WEST, getContentPane());
		sl.putConstraint(sl.WEST, btnPrendiInCarico, 5, sl.EAST, cboListaOrdini);
		sl.putConstraint(sl.SOUTH, getContentPane(), 20, sl.SOUTH, cboListaOrdini);
		sl.putConstraint(sl.EAST, getContentPane(), 20, sl.EAST, btnPrendiInCarico);
		getContentPane().add(btnPrendiInCarico);
		
		setResizable(false);
		
		setLayout(sl);
		pack();
		//setSize(new Dimension(300,100));
		
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		Thread t = new Thread(new MyWorker(this));
		t.start();
	}
	
	public void updateCboListaOrdini() {
		cboListaOrdini.removeAllItems();
		Calendar c = new GregorianCalendar();
		c.setTimeInMillis(0);
		
		OrdiniOrdine[] oto;
		try {
			oto = new ServiziLocator().getOrdini_Port().getNuoviOrdini(c);
			for (int i = 0; i < oto.length; i++) {
				cboListaOrdini.addItem(oto[i]);
			}
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		pack();
		getContentPane().doLayout();
	}
	
	class MyWorker implements Runnable {
		MyFrame f;
		
		public MyWorker(MyFrame f) {
			this.f = f;
		}
		
		public void run() {
			while (true) {
				try {
					Preferences p = Preferences.userNodeForPackage(getClass());
					long lastcheck = p.getLong("lastcheck", 0);
					
					Calendar c = GregorianCalendar.getInstance();
					
					long now = c.getTimeInMillis();
					c.setTimeInMillis(lastcheck);
					
					c.add(Calendar.MILLISECOND, c.get(Calendar.ZONE_OFFSET));
					
					System.out.println(c.getTimeInMillis());
					
					OrdiniOrdine[] oto;
					oto = new ServiziLocator().getOrdini_Port().getNuoviOrdini(c);
					
					if (oto.length > 0) {
						f.updateCboListaOrdini();
						JOptionPane.showMessageDialog(null, "Nuovo ordine inserito!");
					}
					
					p.putLong("lastcheck", now);
					p.sync();
					
					Thread.sleep(10000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (RemoteException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ServiceException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (BackingStoreException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
}
