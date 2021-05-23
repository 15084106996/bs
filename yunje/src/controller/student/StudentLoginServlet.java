package controller.student;

import bean.RespBean;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Student.StudentLoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="StudentLoginServlet",value="/studentLogin")
public class StudentLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String stid=request.getParameter("stid");
        String password=request.getParameter("password");
        StudentLoginService service=new StudentLoginService();
        RespBean respBean=service.doLogin(stid,password);
        if(respBean.getData()!=null){
            request.getSession().setAttribute("loginStudent",respBean.getData());
        }
        response.getWriter().println(new ObjectMapper().writeValueAsString(respBean));
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException{

    }

}