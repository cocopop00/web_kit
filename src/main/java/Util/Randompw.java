package Util;

import java.util.Random;

public class Randompw {

	public String randomPwread() {
		
		// 객체 문자열을 하나로 붙일 클래스
		StringBuffer sb = new StringBuffer();
		Random ran = new Random();
		
		char[] ch = new char[5];
		int[] num = new int[5];
		
		// 영문, 숫자 랜덤.
		for(int i = 0; i < ch.length; i++) {
			ch[i]  = (char)((Math.random() * 26) + 65);
			num[i] = (ran.nextInt(9)+1);
			for(int j = 0; j < i; j++) {
				if(num[i] == num[j]) {
					num[i] = (ran.nextInt(9)+1);
					j -= 1;
				}
			}
		}
		
		sb.append(ch[0]);
		sb.append(num[0]);
		sb.append(ch[1]);
		sb.append(ch[2]);
		sb.append(num[1]);
		sb.append(ch[3]);
		sb.append(ch[4]);
		sb.append(num[2]);
		sb.append(num[3]);
		sb.append(num[4]);		
		
		String newpassword = sb.toString();
		

		return newpassword;
	}
	

}
