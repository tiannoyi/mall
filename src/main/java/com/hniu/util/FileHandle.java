package com.hniu.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class FileHandle {

	public static String readFile(String pathNname) {
		String str=null;
		try {
			File file = new File(pathNname);//定义一个file对象，用来初始化FileReader
	        FileReader reader = new FileReader(file);//定义一个fileReader对象，用来初始化BufferedReader
	        BufferedReader br = new BufferedReader(reader);//new一个BufferedReader对象，将文件内容读取到缓存
	        StringBuilder sb = new StringBuilder();//定义一个字符串缓存，将字符串存放缓存中
	        String s = "";
	        while ((s =br.readLine()) != null) {//逐行读取文件内容，不读取换行符和末尾的空格
	            sb.append(s + "\n");//将读取的字符串添加换行符后累加存放在缓存中
	        }
	        br.close();
	        str=sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}
}
