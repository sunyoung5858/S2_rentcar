package backWeb.a01_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class A05_Servlet
 */
public class A05_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A05_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int grade = 1;
        int lowSal = 1000;
        int highSal = 2000;

        String javascriptCode = "var grade = " + grade + ";\n";
        javascriptCode += "var lowSal = " + lowSal + ";\n";
        javascriptCode += "var highSal = " + highSal + ";\n";
        javascriptCode += "console.log('Java에서 생성한 데이터: ' + grade + ', ' + lowSal + ', ' + highSal);";

        response.setContentType("application/javascript");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(javascriptCode);		
	}

}
