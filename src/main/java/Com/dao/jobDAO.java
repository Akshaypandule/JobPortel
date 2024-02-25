package Com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Com.entity.Jobs;

public class jobDAO 
{
	private Connection conn;
	
	
	public jobDAO(Connection conn)
	{
		super();
		this.conn=conn;
	}
	public boolean Addjob(Jobs j)
	{
		boolean f=false;
		
		try
		{
			String sql="insert into jobs(title,description,category,status,location) values(?,?,?,?,?)";

			PreparedStatement pre=conn.prepareStatement(sql);
			pre.setString(1, j.getTitle());
			pre.setString(2, j.getDescription());
			pre.setString(3, j.getCategory());
			pre.setString(4, j.getStatus());
			pre.setString(5, j.getLocation());
	
			
			int i=pre.executeUpdate();
		
			if(i==1)
			{
				f= true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Jobs> getALLJobs()
	{
		List<Jobs> list=new ArrayList<Jobs>();
		Jobs j=null;
		try
		{
			String sql="select*from jobs order by id desc";
			PreparedStatement pre=conn.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
			while(rs.next())
			{
				j=new Jobs();
				j.setid(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7)+"");
				
				list.add(j);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return list;
	}

}
