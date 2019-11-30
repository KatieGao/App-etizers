

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
@WebServlet("/validationforlogin")
public class validationforlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public validationforlogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if (username==null || username.length()==0) {
			out.println("Please Enter a Username");
			out.println("</br>");
		}
		if (password==null || password.length()==0) {
			out.println("Please Enter a Password");
			out.println("</br>");
		}
		Connection conn=null;
		Statement st = null;
		ResultSet rs=null;
		try {
			String url= "jdbc:mysql://google/201project?cloudSqlInstance=yumingsql:us-central1:yuming&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=yumingfei&password=FYm739291414";
			conn = DriverManager.getConnection(url);
			st = conn.createStatement();
			rs = st.executeQuery("SELECT username,password FROM users");
			boolean userstatus=false;
			boolean passwordstatus=false;
			while(rs.next()) {
				String x=rs.getString("username");
				if(x.contentEquals(username)) {
					userstatus=true;
					String y=rs.getString("password");
					if(!y.contentEquals(password)) {
						out.println("Incorrect Password,Please Try Again");			
						out.println("<br>");
						break;
					}else {
						
						Cookie userName=new Cookie("user",username);
						userName.setMaxAge(30*60);
						response.addCookie(userName);
						break;
					}
				}else {
					userstatus=false;
					
				}		
			}
			if(!userstatus)  {
				out.println("This user does not exist");
				out.println("<br>");
			}
			
			
//			HttpSession session1 = request.getSession(false);
//			session1.invalidate();
//			HttpSession session = request.getSession(true);
//		    session.setMaxInactiveInterval(0);
//		    
//			session.setAttribute("login", "k");
			
			out.flush();
			out.close();
			
			
		    
			
		}catch (SQLException sqle) {
			System.out.println(sqle.getMessage());
		}
		
		
		
		
		
		
		
		
		
		
	}
	
	

	

}
