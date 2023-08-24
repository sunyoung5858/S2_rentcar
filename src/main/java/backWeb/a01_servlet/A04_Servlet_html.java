package backWeb.a01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_Servlet_html
 */
public class A04_Servlet_html extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_Servlet_html() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 3X3테이블 생성.
		PrintWriter out = response.getWriter();
		out.print("<style>td{text-align:center;width:33%;font-size:30pt}</style>");
		out.print("<script>function call(ob){ob.style.background='pink';}</script>");
		out.print("<h2>3X3 테이블</h2>");
		out.print("<table width='300pt' height='300pt' border>");
		// 9X1
		for(int cnt =1;cnt<=9;cnt++) {
			if(cnt%3==1) out.print("<tr>");
			out.print("<td onclick='call(this)'>"+cnt+"</td>");
			if(cnt%3==0) out.print("</tr>");
		}
		out.print("</table>");
		out.close();
	}

}
