#input String orig_image
#output String thumbnail


import com.webratio.rtx.*;
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

InputStream input = blobFile.openFileInputStream();
try{

	BufferedImage image = ImageIO.read(input);
	String ext = StringUtils.substringAfterLast(orig_image, ".");
	
	def width = 200;
	def height = (width*image.getHeight()/image.getWidth()).intValue();
	println height.class;
	// per fare uno scale, utilizzare: AffineTransform 
	BufferedImage resizedImage = new BufferedImage(width, (Integer) height, BufferedImage.TYPE_3BYTE_BGR);  
	Graphics g = resizedImage.getGraphics();
	g.drawImage(image, 0, 0, width, height, 0, 0, image.getWidth(), image.getHeight(), null, null);
	g.dispose();
	
	File originalFile = new File(orig_image); 
	def imageName = originalFile.getName();
	String name = StringUtils.substringBeforeLast(imageName, ".");
	name = name + java.util.UUID.randomUUID();
	
	String uploadDir = rtx.getUploadDirectory();
 
	File thumbFile = new File(uploadDir + File.separator + name + "." + ext);
	
	thumbFile.createNewFile();
	FileOutputStream os = new FileOutputStream(thumbFile);
	
	try {
		ImageIO.write(resizedImage, ext.toUpperCase(), os);
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	RTXBLOBService fileService = rtx.getBLOBService();
	RTXBLOBData thumb = new BLOBData(fileService.getRelativePath(thumbFile), rtx);

	return ["thumbnail" : thumb ]

} catch (IOException e) {
  throw new RTXException(e);  
 
} finally {
  IOUtils.closeQuietly(input);
}
