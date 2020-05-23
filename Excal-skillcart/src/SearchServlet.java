

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.TimerTask;
import java.sql.*;
 /**
 * Servlet implementation class SearchServlet
 */
@WebServlet({ "/SearchServlet", "/SServlet" })
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String namuser=request.getParameter("name").toLowerCase();
	    String cityuser=request.getParameter("city").toLowerCase();
	    String stateuser=request.getParameter("state").toLowerCase();
	    String contactuser=request.getParameter("contact").toLowerCase();
	    String emailuser=request.getParameter("mail").toLowerCase();
	    String occrqd=request.getParameter("occrqd");
	    StringBuffer addressuser= new StringBuffer(request.getParameter("textarea1"));
	    
	    String aadharlabour=null;				

		TImerTask tt = new TImerTask();
	    tt.namuser=namuser;
	    tt.cityuser=cityuser;
	    tt.stateuser=stateuser;
	    tt.contactuser=contactuser;
	    tt.emailuser=emailuser;
	    tt.occrqd=occrqd;
	    tt.addressuser= addressuser;
	    
	    
	 
	   
	    Timer timer=new Timer();
	    timer.scheduleAtFixedRate(tt,0,60*1000);
		
	    try {
			Thread.sleep(60000*2);
			System.out.println("Deleting Timer");
    	    
    	    timer.cancel();
			
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    Connection con=null;

	    try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("--Driver Loaded--");
			String url="jdbc:mysql://localhost:3306/excal";
	        try {
				con = DriverManager.getConnection(url,"root","");
				Statement stmt1=null,stmt=null;
		        stmt=con.createStatement();

		        stmt1=con.createStatement();
		        System.out.println("--Service Connection Esatblished--");

		        String sql="Select * from search where name='"+namuser+"' and contactno='"+contactuser+"' order by id desc ";
		        ResultSet rs=stmt.executeQuery(sql);
		        int tried_var=0;
		        int task_status=0;
		   
		        if(rs.next()) {
		       tried_var=rs.getInt(11);
		       task_status=rs.getInt(10);
		       
		       System.out.println("Service wala tried "+tried_var+"  "+task_status);
		    }
		        if(tried_var>=3 && task_status==0) {
		        	
		        	
		        	SmsApi userinfo = new SmsApi("Sorry For Inconvinience We Could not found Someone for you Right Now .Please Try After Some Time.","0".concat(rs.getString(5)));
		        	userinfo.sendSms();
		        	System.out.println("System sent user regret msg");
//		        	String sql1="Delete from search where name='"+namuser+"' and contactno='"+contactuser+"' ";
//		        
//		        	stmt1.addBatch(sql1);
//		        
//		        	stmt1.executeBatch();
//		        	
		        	
		    	    
		        }
		        
		        
		        
		        
	        } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	        
	    
	    
	    
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	    
	    
	}

}
