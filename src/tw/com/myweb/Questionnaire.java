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
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/db_trade" + 
			"?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
	private static final String username = "root";
	private static final String pwd = "admin123";
	
       
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
		String ipaddr = request.getRemoteAddr();
		
		Quest quest = new Quest();
		quest.setCompany(company_name);
		quest.setUnicode(company_id);
		quest.setAddress(company_address);
		quest.setWriter(company_username);
		quest.setJobtitle(company_position);
		quest.setTel(company_phone);
		quest.setEmail(company_email);
		quest.setQ1(q1);
		quest.setQ2(q2);
		quest.setQ3(q3);
		quest.setQ4(q4);
		quest.setQ5(q5);
		quest.setIpaddr(ipaddr);
		
		QuestDao dao = new QuestDao();
		dao.insert(quest);
	}
	
	class QuestDao {
		private static final String sp_insert_quest = "INSERT INTO `tb_survey` "+
				"(`survey_id`, `company`, `unicode`, `address`, `writer`, `jobtitle`, `tel`, `email`, `q1`, `q2`, `q3`, `q4`, `q5`, `recodetime`, `ipaddr`) " + 
				"values (uuid(),?,?,?,?,?,?,?,?,?,?,?,?,now(),?)";
		
		public void insert(Quest quest) {
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, username, pwd);
				pstmt = con.prepareStatement(sp_insert_quest);
				
				int idx = 1;
				pstmt.setString(idx++, quest.getCompany());
				pstmt.setString(idx++, quest.getUnicode());
				pstmt.setString(idx++, quest.getAddress());
				pstmt.setString(idx++, quest.getWriter());
				pstmt.setString(idx++, quest.getJobtitle());
				pstmt.setString(idx++, quest.getTel());
				pstmt.setString(idx++, quest.getEmail());
				pstmt.setString(idx++, quest.getQ1());
				pstmt.setString(idx++, quest.getQ2());
				pstmt.setString(idx++, quest.getQ3());
				pstmt.setString(idx++, quest.getQ4());
				pstmt.setString(idx++, quest.getQ5());
				pstmt.setString(idx++, quest.getIpaddr());
				
				pstmt.executeUpdate();
			} catch (SQLException se) {
				throw new RuntimeException("A database error occured. " + se.getMessage());
			} catch (ClassNotFoundException cnfe) {
				throw new RuntimeException("A database error occured. " + cnfe.getMessage());
			} finally {
				try {
					if (pstmt != null) {
						pstmt.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (SQLException se) {
					System.out.println("SQLException:".concat(se.getMessage()));
				} catch (Exception e) {
					System.out.println("Exception:".concat(e.getMessage()));
				}
			}
		}
	}
	
	class Quest {
		private String company;
		private String unicode;
		private String address;
		private String writer;
		private String jobtitle;
		private String tel;
		private String email;
		private String q1;
		private String q2;
		private String q3;
		private String q4;
		private String q5;
		private Date recodetime;
		private String ipaddr;
		public String getCompany() {
			return company;
		}
		public void setCompany(String company) {
			this.company = company;
		}
		public String getUnicode() {
			return unicode;
		}
		public void setUnicode(String unicode) {
			this.unicode = unicode;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getWriter() {
			return writer;
		}
		public void setWriter(String writer) {
			this.writer = writer;
		}
		public String getJobtitle() {
			return jobtitle;
		}
		public void setJobtitle(String jobtitle) {
			this.jobtitle = jobtitle;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getQ1() {
			return q1;
		}
		public void setQ1(String q1) {
			this.q1 = q1;
		}
		public String getQ2() {
			return q2;
		}
		public void setQ2(String q2) {
			this.q2 = q2;
		}
		public String getQ3() {
			return q3;
		}
		public void setQ3(String q3) {
			this.q3 = q3;
		}
		public String getQ4() {
			return q4;
		}
		public void setQ4(String q4) {
			this.q4 = q4;
		}
		public String getQ5() {
			return q5;
		}
		public void setQ5(String q5) {
			this.q5 = q5;
		}
		public Date getRecodetime() {
			return recodetime;
		}
		public void setRecodetime(Date recodetime) {
			this.recodetime = recodetime;
		}
		public String getIpaddr() {
			return ipaddr;
		}
		public void setIpaddr(String ipaddr) {
			this.ipaddr = ipaddr;
		}
		
	}

}