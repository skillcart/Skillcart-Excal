

import java.io.IOException;
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
 * Servlet implementation class MobileVerify
 */
@WebServlet({ "/MobileVerify", "/MV" })
public class MobileVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileVerify() {
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
		
		String mobile= request.getParameter("contact1");
		System.out.print("mobileverify serlte :"+mobile);
		int otp= (int)(Math.random()*9000)+1000;
		

		//System.out.println(mobile);
		System.out.println(otp);
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

		
		
		
					try {	
					
						sql="Insert into mobileotp values(null,'"+mobile+"','"+otp+"')";

							stmt.executeUpdate(sql);
							
							SmsApi sotp=new SmsApi("Your Mobile Verification OTP is "+otp,"0".concat(mobile));
							sotp.sendSms();
							
						System.out.println("Insertred Otp in Mobileotp and sms sent\n");
						
					  }
					  catch(Exception e) {
						System.out.println("error:"+e);
					  }

	}


	}


