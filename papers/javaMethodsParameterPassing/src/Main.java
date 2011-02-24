public class Main {
	public static void main(String[] args) {
		TestClass a = new TestClass(1);
		TestClass b = new TestClass(2);
		System.out.println("Value of object a before swap1: "+a.getValue());
		System.out.println("Value of object b before swap1: "+b.getValue());
		swap1(a,b);
		System.out.println("Value of object a after swap1: "+a.getValue());
		System.out.println("Value of object b after swap1: "+b.getValue());
		System.out.println();
		System.out.println("Value of object a before swap2: "+a.getValue());
		System.out.println("Value of object b before swap2: "+b.getValue());
		swap2(a,b);
		System.out.println("Value of object a after swap2: "+a.getValue());
		System.out.println("Value of object b after swap2: "+b.getValue());
		System.out.println();
		System.out.println("Value of object a before swap3: "+a.getValue());
		System.out.println("Value of object b before swap3: "+b.getValue());
		swap3(a,b);
		System.out.println("Value of object a after swap3: "+a.getValue());
		System.out.println("Value of object b after swap3: "+b.getValue());
		System.out.println();
		System.out.println("Value of object a before swap4: "+a.getValue());
		System.out.println("Value of object b before swap4: "+b.getValue());
		swap4(a,b);
		System.out.println("Value of object a after swap4: "+a.getValue());
		System.out.println("Value of object b after swap4: "+b.getValue());
		System.out.println();
		System.out.println("Value of object a before swap5: "+a.getValue());
		System.out.println("Value of object b before swap5: "+b.getValue());
		swap5(a,b);
		System.out.println("Value of object a after swap5: "+a.getValue());
		System.out.println("Value of object b after swap5: "+b.getValue());
	}
	public static void swap1(TestClass a, TestClass b)
	{
		TestClass tmp = b;
		b = a;
		a = tmp;
	}
	public static void swap2(TestClass a, TestClass b)
	{
		int tmpVal = b.getValue();
		b.setValue(a.getValue());
		a.setValue(tmpVal);
	}
	public static void swap3(TestClass a, TestClass b)
	{
		TestClass tmp = (TestClass) b.clone();
		b = (TestClass) a.clone();
		a = tmp;
	}
	public static void swap4(TestClass a, TestClass b)
	{
		TestClass tmp = new TestClass(b);
		b = new TestClass(a);
		a = new TestClass(tmp);
	}
	public static void swap5(TestClass a, TestClass b)
	{
		TestClass tmp = new TestClass();
		tmp.copyTestClassObject(b);
		b.copyTestClassObject(a);
		a.copyTestClassObject(tmp);
	}
}