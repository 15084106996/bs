package controller.teacher;

import bean.RespBean;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Teacher.TeacherLoginService;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="TeacherLoginServlet",value="/teacherLogin")
public class TeacherLoginServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String tid=request.getParameter("tid");
        String password=request.getParameter("password");
        TeacherLoginService service=new TeacherLoginService();
        RespBean respBean=service.doLogin(tid,password);
        if(respBean.getData()!=null){
            request.getSession().setAttribute("loginTeacher",respBean.getData());
        }
        response.getWriter().println(new ObjectMapper().writeValueAsString(respBean));
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException{

    }

}