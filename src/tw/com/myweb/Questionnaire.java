package tw.com.myweb;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Questionnaire")
public class Questionnaire extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Questionnaire() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()){
			String name = params.nextElement();
			String value = request.getParameter(name);
			request.getServletContext().log(request.getRemoteAddr() + "::Request Params::{"+name+"="+value+"}");
		}
		
		String company_name = request.getParameter("company_name");
		String company_id = request.getParameter("company_id");
		String company_address = request.getParameter("company_address");
		String company_username = request.getParameter("company_username");
		String company_position = request.getParameter("company_position");
		String company_phone = request.getParameter("company_phone");
		String company_email = request.getParameter("company_email");
		String q1 = request.getParameter("q1");
		String q2 = request.getParameter("q2");
		String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
		String q5 = request.getParameter("q5");
	}

}
