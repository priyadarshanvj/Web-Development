import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Mypro extends HttpServlet
{
    public void doPost(ServletRequest request,HttpServletResponse response) 
    throws ServletException, IOException 
    {
        Cookie cookie =new Cookie("My_Cookie",txt_data);
        res.addCookie(cookie);
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        out.println("<h2>The username is:");
        out.println(txt_data);
        out.close();
    }
}