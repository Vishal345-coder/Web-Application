package com.ecomm.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class SampleTest 
{
		public static void main(String arg[])
		{
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
			context.scan("com.ecomm");
			context.refresh();
		}
}
