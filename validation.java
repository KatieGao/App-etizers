
import java.io.IOException;
import java.util.Random;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.http.*;
//data base name is a3, table name is info , columns: username, password
@WebServlet("/validation")
public class validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public validation() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String confirm=request.getParameter("confirmedpassword");
		if (username==null || username.length()==0) {
			out.println("Please Enter a Username");
			out.println("</br>");
		}
		if (password==null || password.length()==0) {
			out.println("Please Enter a Password");
			out.println("</br>");
		}
		if (confirm==null || confirm.length()==0) {
			out.println("Please Enter Your Password Again");
			out.println("</br>");
		}
		//connecting to the database
		Connection conn=null;
		Statement st = null;
		ResultSet rs=null;
		try {
		String url= "jdbc:mysql://google/201project?cloudSqlInstance=yumingsql:us-central1:yuming&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=yumingfei&password=FYm739291414";
		conn = DriverManager.getConnection(url);
		st = conn.createStatement();
		rs = st.executeQuery("SELECT username FROM users");
		boolean status=false;
		//check if the username already exists
		while(rs.next()) {
			String use=rs.getString("username");
			if(username.contentEquals(use))  status=true;		
		}
		
		if(status) {
			out.println("The username already exists, please use another one");
			out.println("</br>");
		}
		if(!password.equals(confirm)) {
			out.println("The two passwords do not match, please check");
			out.println("</br>");
		}
		if((!status)&&(password.contentEquals(confirm))) {
			
			String query="INSERT INTO users(username,password)"+"VALUES(?,?)";
			PreparedStatement preparedStmt = conn.prepareStatement(query);
			preparedStmt.setString(1, username);
			preparedStmt.setString(2, password);
		    preparedStmt.executeUpdate();	
		  //creating session
//			HttpSession session = request.getSession(true);
//		    session.setMaxInactiveInterval(10000);   
//		  
//		    session.setAttribute("login", "k");
//		   
		    Cookie userName=new Cookie("user",username);
			userName.setMaxAge(30*60);
			response.addCookie(userName);
		   
		}
		
		out.flush();
		out.close();
		conn.close();
		}catch (SQLException sqle) {
			System.out.println(sqle.getMessage());
		}
	}
}
