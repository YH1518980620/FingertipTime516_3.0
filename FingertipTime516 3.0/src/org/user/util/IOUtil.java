package org.user.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class IOUtil {
	
	   public static FileInputStream readPicIn(String path){
	        FileInputStream picInputStream = null;
	        try {
	            picInputStream = new FileInputStream(new File(path));  //File可以指定路径
	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        }
	        return picInputStream;
	    }/*readPicIn*/

	    //读取图片获取输出流————用于读取
	    public static void readPicOut(InputStream in,  String targetPath){
	        File file = new File(targetPath);   //图片输出位置
	        String path = targetPath.substring(0,targetPath.lastIndexOf("/"));  //分解出存放路径,最后一个/位于文件命之前
	        if (!file.exists()){     //判断是否存在
	            new File(path).mkdir(); //如果目标文件不存在，在该路径创建文件夹
	        }

	        FileOutputStream fos = null;
	        try {
	            fos = new FileOutputStream(file);
	            /*固定写法*/
	            byte[] buff = new byte[1024];    //定义一个字节数组作为缓冲区。
	            int len = 0;    //len记住读取读入缓冲区的字节数
	            while((len = in.read(buff)) != -1){    //判断是否读到文件末尾
	                fos.write(buff, 0, len);    //从第一个字节开始，向文件写入len个字节
	            }
	            fos.flush();
	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        finally {
	            if (fos!=null){
	                try {
	                    fos.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	    }
}
