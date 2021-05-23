package service.Student;



import bean.Homework;
import bean.PageInfos;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;

public class StudentHomeworkServie {
    StudentDao dao=new StudentDaoImpl();
    public PageInfos findStudentHomework(String idOrName, String stid, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Homework> list=dao.findStudentHomework(idOrName==null?"":idOrName,stid,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getHomeworkTotal(idOrName,stid);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
