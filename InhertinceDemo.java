package com.rave.overriding;
// this understanding of InhertanceDemo by using single Inheritance 
// also we can access the parent class by creating an object for it .
//here we extended the child class from a parent class and we Overridden everything from a parent class .
public class InhertinceDemo {
	public void show()
	{
		System.out.println("Hello from the parent class");
		// you can put implementation here
	}

}
class Child extends InhertinceDemo
{
	public void show() //Method overriding
	{
		System.out.println("Hello from the child Class");
		// you can put implementation here
		// Method overriding in the child class, and show inheritance

	}
}

class Main12
{
	public static void main (String args[])
	{
		InhertinceDemo hst = new InhertinceDemo(); //an instance of the parent class
		Child sd = new Child(); // an instance of the child class 
		sd.show(); // calling the method 
		hst.show();
	}
}