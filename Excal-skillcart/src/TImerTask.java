import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.TimerTask;

public class TImerTask extends TimerTask {

	static  int checker=0,a=0;
	String namuser=null;
    String cityuser=null;
    String stateuser=null;
    String contactuser=null;
    String emailuser=null;
    String occrqd=null;
    StringBuffer addressuser= null;
    
    String aadharlabour=null;
	
	
	
	

	
	@Override
	public void run() {
	
		
		//SmsApi ss=new SmsApi("hello world","09417814088");
		//ss.sendSms();
		
		
		
		
		System.out.println("sms wlaa ");
		Statement stmt=null,stmt1=null,stmt200=null,stmt2=null,stmt3=null,stmt4=null,stmt5=null,stmt6=null,stmt7=null,stmt100=null;
		Connection con=null;

		System.out.println("---------------------");
		System.out.println(namuser);
		System.out.println(cityuser);
		System.out.println("state user :"+stateuser);
		System.out.println(contactuser);
		System.out.println(emailuser);
		System.out.println(occrqd);
		System.out.println(addressuser);
		System.out.println("---------------------");

		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("--Driver Loaded--");
			String url="jdbc:mysql://localhost:3306/excal";
	        con = DriverManager.getConnection(url,"root","");
	        System.out.println("--Connection Esatblished--");

	        
	        stmt=con.createStatement();
	        stmt1=con.createStatement();    
	        stmt2=con.createStatement();
		     stmt3=con.createStatement();
		     stmt4=con.createStatement();
			 stmt5=con.createStatement();
			 stmt6=con.createStatement();
			 stmt7=con.createStatement();
			 stmt100=con.createStatement();
		}
catch(Exception e) {
	System.out.println("Error while loading or connecting :"+ e);
}	
		
String sql=null,sql1=null,sql2=null,sql3=null,sql4=null,sql5=null,sql8=null,sql9=null,sql10=null,sql11=null,sql12=null;					

		
		
		
		
	try {	
		
		
				
		sql4="select *  from online where count>=3 and  occupation <> 'Others' ";
		System.out.println("yess1");
		
		ResultSet rs4=stmt.executeQuery(sql4);
		while(rs4.next()) {

				String aadhardel=rs4.getString(11);
				System.out.println("Deleted aadhar no"+aadhardel);
			sql3= "Delete from online where Aadhar='"+aadhardel+"'";
			sql5="Update register set logged=0 where aadharno='"+aadhardel+"'";
			
			stmt1.addBatch(sql5);
			stmt1.addBatch(sql3);
			
			stmt1.executeBatch();
			System.out.println("Deleted greater than count 3 \n");
			
		}
		
		
		
		String sql6= "Update online set count=0 where occupation='Others' and count>3";
		stmt2.executeUpdate(sql6);
		
		System.out.println("yess2");
			
		sql12="Select * from search where name='"+namuser+"' and contactno='"+contactuser+"'";
		
		ResultSet test=stmt7.executeQuery(sql12);
		
		int task_status=0;
		
		if(checker==0) { task_status=0; checker=1;}
		else { if(test.next())task_status=test.getInt(10);}
		System.out.println("Task STataus is "+task_status);
		
		System.out.println("yes3");
		
		
		if(task_status==0){
		
		sql=" Select * from online where  occupation='"+occrqd+"' and city='"+cityuser+"' and count<3  order by  count ASC,id ASC " ;
		
	
		ResultSet rs3 = stmt2.executeQuery(sql);
		
		int count =0;
		
		
		if(rs3.next() )
		 {
			System.out.println("--city--");
			aadharlabour=rs3.getString(11);
			System.out.println(rs3.getString(1));
			int abc=a+1;
			sql2="Insert into search values('"+namuser+"','"+cityuser+"','"+stateuser+"','"+addressuser+"','"+contactuser+"','"+emailuser+"','"+occrqd+"','"+aadharlabour+"',null,0,'"+abc+"')";
			a++;
			String sql_q="Update search set tried=tried+1 where aadharno='"+aadharlabour+"' order by id Desc";
			stmt6.executeUpdate(sql_q);
			
				
			String zero="0";
			String contact_no_labour=zero.concat(rs3.getString(2));
			String otp= ""+((int)(Math.random()*9000)+1000);
			sql8= "Update online set count=count+1 where Aadhar='"+aadharlabour+"'";
			sql10="Update online set OtpSet='"+otp+"' ,client='"+namuser+"' where Aadhar='"+aadharlabour+"'";
			 	stmt3.addBatch(sql2);
			 	stmt3.addBatch(sql8);
			 	stmt3.addBatch(sql10);
			 	
			 	stmt3.executeBatch();
			 	
			 	SmsApi s1= new SmsApi("Kindly Note We Found Some Work For You To Know More Kindly Confirm At Portal with OTP pin : "+otp+".  At Portal Within 60 Sec .Any Previous Otp is Now Expired.",contact_no_labour);
				s1.sendSms(); 
				
			System.out.println("Inserted in search and count incremented");
			count=1;
			
	    
		 }
		  if(count==0)
		  {	 sql1=" Select * from online where  occupation='"+occrqd+"' and state='"+stateuser+"' and count<3  order by count ASC, id ASC " ;
				ResultSet rs1 = stmt4.executeQuery(sql1);
				
				if(rs1.next())
				{
					count =0;
					System.out.println("--state--");
					 sql2="Insert into search values('"+namuser+"','"+cityuser+"','"+stateuser+"','"+addressuser+"','"+contactuser+"','"+emailuser+"','"+occrqd+"','"+aadharlabour+"',null,0,1)";
					 String sql_q1="Update search set tried=tried+1 where aadharno='"+aadharlabour+"' order by id Desc";
						stmt100.executeUpdate(sql_q1);
						
					 String otp= ""+((int)(Math.random()*9000)+1000);
					 String zero="0";
						String contact_no_labour=zero.concat(rs1.getString(2));
						
						aadharlabour=rs1.getString(11);
					 sql9= "Update online set count=count+1 where Aadhar='"+aadharlabour+"'";
					 sql11="Update online set OtpSet='"+otp+"' ,client='"+namuser+"' where Aadhar='"+aadharlabour+"'";
								 			 
					 stmt5.addBatch(sql9);
					 stmt5.addBatch(sql2);
					 stmt5.addBatch(sql11);
					 
					 stmt5.executeBatch();
					 SmsApi s2= new SmsApi("Kindly Note We Found Some Work For You To Know More Kindly Confirm At Portal with OTP pin : "+otp+" . At Portal Within 60 Sec .Any Previous Otp is Now Expired.",contact_no_labour);
						s2.sendSms(); 
					
					 System.out.println("Inserted in search and count incre");		
					System.out.println(rs1.getString(1));
				}

			
		}
	}//if wali
		  
	  }
	catch(Exception e) {
		System.out.println("error:"+e);
	}
}//run wali
	

}//class ki
