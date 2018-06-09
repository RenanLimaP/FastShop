package br.com.fastshop.loja.infra;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

//@Component
public class FileSaver {

//	@Autowired
//	private HttpServletRequest request;
	
	public static void salvarImagem(String caminho, MultipartFile imagem) {
		File file = new File(caminho);
		try {
			FileUtils.writeByteArrayToFile(file,imagem.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

//	public String write(String baseFolder, MultipartFile file) {
//		try {
//			String realPath = request.getServletContext().getRealPath("/" + baseFolder); // vai pegar o caminho real
//			String path = realPath + "\\" +file.getOriginalFilename();
//			file.transferTo(new File(path));
//			return path;
//		} catch (IllegalStateException | IOException e) {
//
//			throw new RuntimeException(e);
//		}
//	}
}