package controller.teacher;

import bean.PageInfos;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Teacher.TeacherHomeworkServie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchTeacherHomeworkServlet" ,value = "/searchTeacherHomework")
public class SearchTeacherHomeworkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String cIdOrName=request.getParameter("cIdOrName");
        String stIdOrName=request.getParameter("stIdOrName");
        String pageNum=request.getParameter("pageNum");
        String pageSize=request.getParameter("pageSize");
        TeacherHomeworkServie servie=new TeacherHomeworkServie();
        PageInfos pageInfos=servie.findTeacherHomework(cIdOrName,stIdOrName,pageNum,pageSize);
        response.getWriter().println(new ObjectMapper().writeValueAsString(pageInfos));
    }
}
