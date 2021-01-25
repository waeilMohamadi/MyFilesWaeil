package com.rave.overriding;

public class ConstructorDemo {

	
//Using getters and Setters with different parameters 
//All I've learned is that we need getters/setters for security and that they 
//can also be used to change or edit values later on.
        private int value = 0;
        private String name ;

        public ConstructorDemo () {
            value = 0; 
        }

        public ConstructorDemo (int i) {
            this.value = i;
        }

        public int getValue() {
            return value; 
        }

        public void setValue(int val) {
            this.value = val; 
        }

        public String getName(String name) {
            return this.name = name; 
        }
        public String setName(String name) {
            return name; 
        }
        public static void main(String[] args) {     
        	ConstructorDemo example = new ConstructorDemo (20);
            example.setValue(20); 
            example.setName("waeil");
            //Both lines above do same thing - why use constructor? 
            System.out.println(example.getValue());
            System.out.println(example.getName("waeil"));
        }
   }