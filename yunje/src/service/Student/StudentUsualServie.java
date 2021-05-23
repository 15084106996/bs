package service.Student;

import bean.PageInfos;
import bean.Usual;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;

public class StudentUsualServie {
    StudentDao dao=new StudentDaoImpl();
    public PageInfos findStudentUsual(String idOrName,String stid, String pageNum, String pageSize) {
            //查询一页的真实数据
        List<Usual> list=dao.findStudentUsual(idOrName==null?"":idOrName,stid,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
            //查询总数
        long counts=dao.getUsualTotal(idOrName,stid);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
