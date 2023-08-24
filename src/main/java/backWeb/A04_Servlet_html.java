package backWeb;

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
	String [] rainbow = {"red","orange","yellow","green","blue","navy","purple"};
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
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charsset=utf-8");
		PrintWriter out = response.getWriter();
		// 첫번째 테이블
		out.print("<table border><tr>");
		for(int cnt=1;cnt<=3;cnt++) {
			out.print("<td>"+cnt+"</td>");
		}
		out.print("</tr></table>");
		// 두번째 테이블
		out.print("<table border>");
		for(int cnt=1;cnt<=3;cnt++) {
			out.print("<tr><td>"+cnt+"</td></tr>");
		}
		out.print("</table>");
		// 세번째 테이블
		out.print("<table border>");
		for(int cnt=1;cnt<=3;cnt++) {
			out.print("<tr>");
			for(int idx=1;idx<=3;idx++) {
				out.print("<td>"+idx+"</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
		// 다른방법
		// 세번째 테이블
		out.print("<style>td{text-align:center;}</style>");
		out.print("<table width='300pt' height='300pt' border>");
		for(int cnt=1;cnt<=9;cnt++) {
			if(cnt%3==1) {
				out.print("<tr>");
			}
			out.print("<td onclick='alert('hi')'>"+cnt+"</td>");
			if(cnt%3==0) {
				out.print("</tr>");
			}
		}
		out.print("</table>");
		// servlet에서 반복문으로 7가지 무지개 색 h2를 만드세요
		out.print("<h2>무지개 시작!</h2>");
		for(int cnt=0; cnt<7;cnt++) {
			out.print("<h2 style=\"background-color:"+rainbow[cnt]+"\">");
			out.print(cnt+1);
			out.print("</h2>");
		}
		//  servlet에서 4X4테이블로 클릭시 @@번호 안녕하세요가 alert으로 로딩되게 하세요.	
		out.print("<table border width='50%'>");
		for(int cnt=1;cnt <=16; cnt++) {
			if(cnt%4==1) {
				out.print("<tr>");
			}
			out.print("<td onclick=\"alert(\'"+cnt+"번호 안녕하세요\');\">"+cnt+"</td>");
			if(cnt%4==0) {
				out.print("</tr>");
			}
		}
		out.print("</table>");
		
		out.close();
	}	
	
}
