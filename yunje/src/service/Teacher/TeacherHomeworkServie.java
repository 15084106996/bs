package service.Teacher;

import bean.Homework;
import bean.PageInfos;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherHomeworkServie {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findTeacherHomework(String cIdOrName, String stIdOrName, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Homework> list=dao.findTeacherHomework(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getHomeworkTotal(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
