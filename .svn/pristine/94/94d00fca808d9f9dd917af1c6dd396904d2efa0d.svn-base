package Util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA256 {

	// 암호화 시킬 String타입의 객체를 가져온다.
	public String encrypt(String text) throws NoSuchAlgorithmException{
		
		// 자바 해싱 클래스 사용.
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		
		// 지정된 byte 단위로 데이터를 사용해 digest을 갱신한다.
		md.update(text.getBytes());
		
		// 바이트 배열로 해쉬를 반환. 
		return bytesToHex(md.digest());
		
	}
	
	
	private String bytesToHex(byte[] bytes) {
		
		StringBuilder builder = new StringBuilder();
		
		// 16진수(헥사)로 포맷
		for(byte b : bytes) {
			builder.append(String.format("%02x", b));
		}
		
		// 문자열로 만들어 리턴.
		return builder.toString();
		
	}
	
}
