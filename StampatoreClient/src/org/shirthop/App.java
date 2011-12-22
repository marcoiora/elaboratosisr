package org.shirthop;

import java.rmi.RemoteException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.xml.rpc.ServiceException;

import org.webml.www.webservices.wsdl.ServiziLocator;

import com.shirtshop.Servizi.Ordini.OrdiniOrdine;

public class App {
	public static void main(String[] args) throws RemoteException, ServiceException {
		new MyFrame().setVisible(true);
	}
}
