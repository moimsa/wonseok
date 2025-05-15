package com.my.shop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShopApplication.class, args);
		Test test = new Test();
		test.hello();
	}

}

class Test {
	String name = "Kim";
	void hello() {
		System.out.println("Hello " + name);
	}
}
