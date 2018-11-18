package org.tain.app;

public class App {

	public static void main(String[] args) {
		System.out.println(">>>>> " + new Object() {}.getClass().getEnclosingClass().getName());
	}
}
