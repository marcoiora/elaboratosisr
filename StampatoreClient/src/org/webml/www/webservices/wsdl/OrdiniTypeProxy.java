package org.webml.www.webservices.wsdl;

public class OrdiniTypeProxy implements org.webml.www.webservices.wsdl.OrdiniType {
  private String _endpoint = null;
  private org.webml.www.webservices.wsdl.OrdiniType ordiniType = null;
  
  public OrdiniTypeProxy() {
    _initOrdiniTypeProxy();
  }
  
  public OrdiniTypeProxy(String endpoint) {
    _endpoint = endpoint;
    _initOrdiniTypeProxy();
  }
  
  private void _initOrdiniTypeProxy() {
    try {
      ordiniType = (new org.webml.www.webservices.wsdl.ServiziLocator()).getOrdini_Port();
      if (ordiniType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)ordiniType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)ordiniType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (ordiniType != null)
      ((javax.xml.rpc.Stub)ordiniType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public org.webml.www.webservices.wsdl.OrdiniType getOrdiniType() {
    if (ordiniType == null)
      _initOrdiniTypeProxy();
    return ordiniType;
  }
  
  public com.shirtshop.Servizi.Ordini.OrdiniOrdine[] getNuoviOrdini(java.util.Calendar sincewhen) throws java.rmi.RemoteException{
    if (ordiniType == null)
      _initOrdiniTypeProxy();
    return ordiniType.getNuoviOrdini(sincewhen);
  }
  
  public boolean prendiInCarico(int OIDOrdine, int OIDStampatore) throws java.rmi.RemoteException{
    if (ordiniType == null)
      _initOrdiniTypeProxy();
    return ordiniType.prendiInCarico(OIDOrdine, OIDStampatore);
  }
  
  
}