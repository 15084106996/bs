package service.Student;

import bean.PageInfos;
import bean.Topic;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;


public class StudentTopicServie {
    StudentDao dao=new StudentDaoImpl();
    public PageInfos findStudentTopic(String htid, String pageNum, String pageSize) {
        //查询一页的真实数据
        List <Topic> list=dao.findStudentTopic(htid,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getTopicTotal(htid);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
