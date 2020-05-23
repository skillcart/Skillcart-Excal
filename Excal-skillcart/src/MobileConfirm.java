

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MobileConfirm
 */
@WebServlet("/MobileConfirm")
public class MobileConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileConfirm() {
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
		
		String otp_filled= request.getParameter("verifyotp");
		

		System.out.println(otp_filled);
		
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
					
						sql="Select * from mobileotp where otp='"+otp_filled+"' order by id Desc";
						
						ResultSet rs1=stmt.executeQuery(sql);

							if(rs1.next()) {
								
								String mobile=rs1.getString(2);
								SmsApi sotp=new SmsApi("Your Mobile Verification is Complete .Now You Can Proceed To Register ","0".concat(mobile));
								sotp.sendSms();
							
								
								System.out.println("Varified Otp in Mobileotp and sms sent\n");
								
								Cookie cookie = new Cookie("c","1");
								response.addCookie(cookie);
								
								System.out.println("cookie set to 1");
							}else {
								Cookie cookie = new Cookie("c","0");
								response.addCookie(cookie);
								
								System.out.println("cookie set to 0");
								
							}
					  }
					  catch(Exception e) {
						System.out.println("error:"+e);
					  }


	}

}
