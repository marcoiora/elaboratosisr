/**
 * OrdiniOrdine.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.shirtshop.Servizi.Ordini;

import java.text.SimpleDateFormat;

public class OrdiniOrdine  implements java.io.Serializable {
    private int oid;

    private java.util.Calendar dataOraConferma;
    
    public String toString() {
    	SimpleDateFormat sdf = new SimpleDateFormat("d-M-yy H:m:s");
    	return getOid()+ " - " + sdf.format(getDataOraConferma().getTime());
    }

    public OrdiniOrdine() {
    }

    public OrdiniOrdine(
           int oid,
           java.util.Calendar dataOraConferma) {
           this.oid = oid;
           this.dataOraConferma = dataOraConferma;
    }


    /**
     * Gets the oid value for this OrdiniOrdine.
     * 
     * @return oid
     */
    public int getOid() {
        return oid;
    }


    /**
     * Sets the oid value for this OrdiniOrdine.
     * 
     * @param oid
     */
    public void setOid(int oid) {
        this.oid = oid;
    }


    /**
     * Gets the dataOraConferma value for this OrdiniOrdine.
     * 
     * @return dataOraConferma
     */
    public java.util.Calendar getDataOraConferma() {
        return dataOraConferma;
    }


    /**
     * Sets the dataOraConferma value for this OrdiniOrdine.
     * 
     * @param dataOraConferma
     */
    public void setDataOraConferma(java.util.Calendar dataOraConferma) {
        this.dataOraConferma = dataOraConferma;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof OrdiniOrdine)) return false;
        OrdiniOrdine other = (OrdiniOrdine) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.oid == other.getOid() &&
            ((this.dataOraConferma==null && other.getDataOraConferma()==null) || 
             (this.dataOraConferma!=null &&
              this.dataOraConferma.equals(other.getDataOraConferma())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        _hashCode += getOid();
        if (getDataOraConferma() != null) {
            _hashCode += getDataOraConferma().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(OrdiniOrdine.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://shirtshop.com/Servizi/Ordini", ">>Ordini>Ordine"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("oid");
        elemField.setXmlName(new javax.xml.namespace.QName("", "oid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("dataOraConferma");
        elemField.setXmlName(new javax.xml.namespace.QName("", "dataOraConferma"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
