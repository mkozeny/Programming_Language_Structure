package var;

public class Variables {

	/**
	 * @param args
	 */
	/*declare and initialize instance variable*/
	public int instanceVariable=12;
	
	/*declare and initialize class variable*/
	public static int classVariable=13;
	
	public static void main(String[] args) {
		System.out.println("Class variable: " 
                + classVariable);

		/*Instantiate object to access instance variable and method.*/
		Variables var1 = new Variables();
		System.out.println("Instance variable: " 
		         + var1.instanceVariable);
		/*method call*/
		var1.method(14);
		
		/*you can see that class variable is still same*/
		Variables var2 = new Variables();
		System.out.println("Var1 class variable: " 
                + var1.classVariable);
		System.out.println("Var2 class variable: " 
                + var2.classVariable);

		/*if one of the object change class variable
		 * this change is also reflected to other objects,
		 * because class variable is 'object independent'*/
		var2.classVariable=16;
		System.out.println("Var1 class variable: " 
                + var1.classVariable);
		System.out.println("Var2 class variable: " 
                + var2.classVariable);
		
		
		/*if one of the object change instance variable
		 * this change is not reflected to other objects,
		 * because instance variable is connected to concrete object,
		 * we can say it is his state*/
		var2.instanceVariable=17;
		System.out.println("Var1 instance variable: " 
                + var1.instanceVariable);
		System.out.println("Var2 instance variable: " 
                + var2.instanceVariable);
		
		
		/*declare and intitialize a local variable*/
		int localVariable = 15; 
		System.out.println("Local variable: " 
		                + localVariable);

	}
	public void method(int methodParameter)
	{
		System.out.println("Method parameter: " 
                + methodParameter);
	}
}
