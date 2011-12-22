/**
 * ServiziLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.webml.www.webservices.wsdl;

public class ServiziLocator extends org.apache.axis.client.Service implements org.webml.www.webservices.wsdl.Servizi {

    public ServiziLocator() {
    }


    public ServiziLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ServiziLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for Ordini_Port
    private java.lang.String Ordini_Port_address = "http://localhost:8080/ShirtShop/Servizi/Ordini.do";

    public java.lang.String getOrdini_PortAddress() {
        return Ordini_Port_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String Ordini_PortWSDDServiceName = "Ordini_Port";

    public java.lang.String getOrdini_PortWSDDServiceName() {
        return Ordini_PortWSDDServiceName;
    }

    public void setOrdini_PortWSDDServiceName(java.lang.String name) {
        Ordini_PortWSDDServiceName = name;
    }

    public org.webml.www.webservices.wsdl.OrdiniType getOrdini_Port() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(Ordini_Port_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getOrdini_Port(endpoint);
    }

    public org.webml.www.webservices.wsdl.OrdiniType getOrdini_Port(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.webml.www.webservices.wsdl.OrdiniStub _stub = new org.webml.www.webservices.wsdl.OrdiniStub(portAddress, this);
            _stub.setPortName(getOrdini_PortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setOrdini_PortEndpointAddress(java.lang.String address) {
        Ordini_Port_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (org.webml.www.webservices.wsdl.OrdiniType.class.isAssignableFrom(serviceEndpointInterface)) {
                org.webml.www.webservices.wsdl.OrdiniStub _stub = new org.webml.www.webservices.wsdl.OrdiniStub(new java.net.URL(Ordini_Port_address), this);
                _stub.setPortName(getOrdini_PortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("Ordini_Port".equals(inputPortName)) {
            return getOrdini_Port();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://www.webml.org/webservices/wsdl", "Servizi");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://www.webml.org/webservices/wsdl", "Ordini_Port"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("Ordini_Port".equals(portName)) {
            setOrdini_PortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
