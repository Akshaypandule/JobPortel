package Com.entity;

public class User 
{
	private int id;
	private String name;
	private String email;
	private String password;
	private String qualification;
	private String role;
	
	public User(String name,String email,String password,String qualification,String role)
	{
		this.name=name;
		this.email=email;
		this.password=password;
		this.qualification=qualification;
		this.role=role;
	}
	public User()
	{
		super();
	}
	
	public int getid()
	{
		return id;
	}
	public void setid(int id)
	{
		this.id=id;
	}
	public String getname()
	{
		return name;
	}
	public void setname(String name)
	{
		this.name=name;
	}
	public String setemail()
	{
		return email;
	}
	public void setemail(String email)
	{
		this.email=email;
	}
	public String getpassword()
	{
		return password;
	}
	public void setpassword(String password)
	{
		this.password=password;
	}
	public String getqualification()
	{
		return qualification;
	}
	public String role()
	{
		return role;
	}
	public void setrole(String role)
	{
		this.role=role;
	}
			
	

}
