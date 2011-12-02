#input String orig_image
#output String thumbnail


import com.webratio.rtx.RTXBLOBData;
import com.webratio.rtx.RTXException;
import com.webratio.rtx.blob.BLOBData;
import com.webratio.rtx.blob.ExternalBLOBData;
import com.webratio.rtx.blob.ByteArrayBLOBData;
import com.webratio.rtx.blob.*

import org.apache.commons.lang.StringUtils;
import org.apache.commons.io.IOUtils;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.awt.Graphics;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.File;


RTXBLOBData blobFile = new BLOBData(orig_image, rtx);

// Conversione
InputStream input = blobFile.openFileInputStream();
try{
	BufferedImage image = ImageIO.read(input);
	String ext = StringUtils.substringAfterLast(imageName, ".");
	def width = image.getWidth(null);
	def height = image.getHeight(null);
	// per fare uno scale, utilizzare: AffineTransform 
	BufferedImage grayScaleImage = new BufferedImage(width, height, BufferedImage.TYPE_BYTE_GRAY);  
	Graphics g = grayScaleImage.getGraphics();  
	g.drawImage(image, 0, 0, null);  
	g.dispose();
	ByteArrayOutputStream os = new ByteArrayOutputStream(); 
	try {
		ImageIO.write(grayScaleImage, ext.toUpperCase(), os);
	} catch (IOException e) {
	// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	File originalFile = new File(orig_image);  
	def imageName = originalFile.getName();
	RTXBLOBData thumb = new ByteArrayBLOBData(imageName, os.toByteArray());

} catch (IOException e) {
 
  throw new RTXException(e);  
 
} finally {
 
  IOUtils.closeQuietly(input);
 
}
return ["thumbnail" : thumb ]