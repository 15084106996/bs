package controller.teacher;

import bean.PageInfos;
import bean.RespBean;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Teacher.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchStudentServlet" ,value = "/searchStudent")
public class SearchStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            response.setContentType("application/json;charset=utf-8");
            String pageNum=request.getParameter("pageNum");
            String pageSize=request.getParameter("pageSize");
            StudentService service=new StudentService();
            PageInfos pageInfos=service.findStudent(pageNum,pageSize);
            response.getWriter().println(new ObjectMapper().writeValueAsString(pageInfos));
        }
}
