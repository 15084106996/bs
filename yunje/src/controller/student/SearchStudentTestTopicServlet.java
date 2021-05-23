package controller.student;

import bean.PageInfos;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Student.StudentTestTopicServie;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchStudentTestTopicServlet" ,value = "/searchStudentTestTopic")
public class SearchStudentTestTopicServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String ttid=request.getParameter("ttid");
        String pageNum=request.getParameter("pageNum");
        String pageSize=request.getParameter("pageSize");
        StudentTestTopicServie servie=new StudentTestTopicServie();
        PageInfos pageInfos=servie.findStudentTestTopic(ttid,pageNum,pageSize);
        response.getWriter().println(new ObjectMapper().writeValueAsString(pageInfos));
    }
}
