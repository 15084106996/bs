package controller.student;

import bean.PageInfos;
import com.fasterxml.jackson.databind.ObjectMapper;
import service.Student.StudentTopicServie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchStudentTopicServlet" ,value = "/searchStudentTopic")
public class SearchStudentTopicServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String htid=request.getParameter("htid");
        String pageNum=request.getParameter("pageNum");
        String pageSize=request.getParameter("pageSize");
        StudentTopicServie servie=new StudentTopicServie();
        PageInfos pageInfos=servie.findStudentTopic(htid,pageNum,pageSize);
        response.getWriter().println(new ObjectMapper().writeValueAsString(pageInfos));
    }
}