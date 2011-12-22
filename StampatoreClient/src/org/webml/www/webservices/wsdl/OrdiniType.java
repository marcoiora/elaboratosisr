/**
 * OrdiniType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.webml.www.webservices.wsdl;

public interface OrdiniType extends java.rmi.Remote {
    public com.shirtshop.Servizi.Ordini.OrdiniOrdine[] getNuoviOrdini(java.util.Calendar sincewhen) throws java.rmi.RemoteException;
    public boolean prendiInCarico(int OIDOrdine, int OIDStampatore) throws java.rmi.RemoteException;
}
