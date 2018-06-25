import static org.junit.Assert.*;

import javax.servlet.http.HttpSession;

import org.junit.Test;

import com.hniu.util.FileHandle;
import com.sun.org.apache.xml.internal.security.Init;

public class Ceshi {

	@Test
	public void test() {
		String a= "C:\\Users\\Administrator\\Desktop\\天猫保障表.txt";
		System.out.println(a);
		String str=FileHandle.readFile(a);
		System.out.println(str);	
	}

}
