

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConfirmJob
 */
@WebServlet("/ConfirmJob")
public class ConfirmJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Statement stmt=null,stmt1=null,stmt2=null,stmt3=null;
		Connection con=null;
		
		String userconfirm= request.getParameter("confirmemail");
		String pinconfirm=request.getParameter("confirmpin");

		System.out.println(userconfirm);
		System.out.println(pinconfirm);
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
		}
		catch(Exception e) {
			System.out.println("Error while loading or connecting :"+ e);
		}	
				
		String sql=null,sql1=null,sql2=null,sql3=null,sql_user=null,sql_lab=null;					
		
		String zero="0";
		
				

		
					try {	
						
						PrintWriter out= response.getWriter();
						out.print("<h1> You Are Confirmed Succesfully.Wait We Wil Send You Deatils Soon </h1>");
						
						sql="select *  from online where email='"+userconfirm+"' and OtpSet='"+pinconfirm+"'";
						
						ResultSet rs=stmt.executeQuery(sql);
						if(rs.next()) {
				
							String clientname=rs.getString(12);
							String aadharlabour=rs.getString(11);
							
							
							sql_lab="select *  from online where email='"+userconfirm+"' and OtpSet='"+pinconfirm+"'";
							
							ResultSet rs_lab=stmt2.executeQuery(sql_lab);
							
							
							
							if(rs_lab.next()) {
							

								String aad=rs_lab.getString(11);
								String cnam=rs_lab.getString(12);
								sql_user="Select * from search where name='"+cnam+"' and aadharno='"+aad+"' ";
								
								ResultSet rs_user=stmt3.executeQuery(sql_user);
								
								if(rs_user.next()) {
									
									System.out.println("Confirmed ");
							SmsApi s_user= new SmsApi("We Found Worker For You .He/She will COntact you soon. Details Are: Name: "+rs_lab.getString(1) +"Contact No."+rs_lab.getString(2)+"Thanks For Using SkillCart.",zero.concat(rs_user.getString(5)));
							s_user.sendSms(); 
						    
							
							SmsApi s_lab= new SmsApi("We have Confirmed Your Job  .Contact Him/Her As soon as Possible . \nDetails Are:    Name: "+rs_user.getString(1) +"Contact No."+rs_user.getString(5)+"Address :"+rs_user.getString(4)+"Thanks For Using SkillCart.",zero.concat(rs_lab.getString(2)));
							s_lab.sendSms(); 
						    
							
							System.out.println("Sent Sms");			
							}
								}
							
							sql1="Delete from online where aadhar='"+aadharlabour+"' ";
							sql2="Update search set task_status=1 where aadharno='"+aadharlabour+"' and name='"+clientname+"' ";
							sql3="Update register set logged=0 where aadharno='"+aadharlabour+"' ";
							
							stmt1.addBatch(sql1);
							stmt1.addBatch(sql2);
							stmt1.addBatch(sql3);
							
							stmt1.executeBatch();

							
						}
						
						
					  }
					  catch(Exception e) {
						System.out.println("error:"+e);
					  }

	}

}
