#input Document inputDocument
#output Document document
 
import org.dom4j.*
 
Element root = inputDocument.getRootElement().selectSingleNode("Template")

root.selectNodes("Instance").each{nodo ->
	def oidTemplate = nodo.selectSingleNode("oid").text
	// Creo il nuovo elemento URL, costruendolo dall'oid.
    Element url = nodo.addElement("URL")
    url.setText("http://localhost:8080/ShirtShop/page9.do?kcond2.att1=" + oidTemplate)
}

return ["document":inputDocument]