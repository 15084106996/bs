package service.Teacher;

import bean.PageInfos;
import bean.Student;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class StudentService {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findStudent(String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Student> list=dao.findStudent((Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getStudentTotal();
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
