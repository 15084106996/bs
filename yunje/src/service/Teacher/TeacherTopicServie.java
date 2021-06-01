package service.Teacher;

import bean.PageInfos;
import bean.Topic;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherTopicServie {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findTeacherTopic(String htid, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Topic> list=dao.findTeacherTopic(htid,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getTopicTotal(htid);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
