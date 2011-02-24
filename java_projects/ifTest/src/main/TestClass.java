package main;

public class TestClass implements Cloneable{

	private int value;
	
	public TestClass()
	{
		
	}
	
	public TestClass(TestClass testClass)
	{
		this.value = testClass.getValue();
	}

	public TestClass(int value) {
		super();
		this.value = value;
	}
	
	public void copyTestClassObject(TestClass testClass)
	{
		this.value = testClass.getValue();
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	public Object clone()
    {
        try
        {
            return super.clone();
        }
        catch( CloneNotSupportedException e )
        {
            return null;
        }
    } 
	
}
