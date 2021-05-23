package controller.teacher;

import bean.PageInfos;
import bean.Teacher;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Student.StudentTimeServie;
import service.Teacher.TeacherTimeServie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchTeacherTimeServlet" ,value = "/searchTeacherTime")
public class SearchTeacherTimeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String stIdOrName=request.getParameter("stIdOrName");
        String cIdOrName=request.getParameter("cIdOrName");
        String pageNum=request.getParameter("pageNum");
        String pageSize=request.getParameter("pageSize");
        TeacherTimeServie servie=new TeacherTimeServie();
        PageInfos pageInfos=servie.findTeacherTime(stIdOrName,cIdOrName,pageNum,pageSize);
        response.getWriter().println(new ObjectMapper().writeValueAsString(pageInfos));
    }
}