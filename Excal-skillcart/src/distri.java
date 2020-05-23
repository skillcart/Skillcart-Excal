

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class distri
 */
@WebServlet("/distri")
public class distri extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public distri() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String option = request.getParameter("butotp");
System.out.println(option + " is selected option");
		if (option != null)
		{
				if (option.equals("SendOTP"))
				{
		
					RequestDispatcher rd=request.getRequestDispatcher("MobileVerify");  
			        rd.forward(request, response);  
			        
			        System.out.println("Dispatched to mobileverify");
				}
				else if(option.equals("RegisterNow")) 
				{
		
					RequestDispatcher rd=request.getRequestDispatcher("registerhire.jsp");  
			        rd.forward(request, response);  

			        System.out.println("Dispatched to register");
				}
		
		
		}
		

		
		
		
		//////////////////////////////
		
	}

}
