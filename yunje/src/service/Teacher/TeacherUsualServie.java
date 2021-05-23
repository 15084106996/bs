package service.Teacher;

import bean.PageInfos;
import bean.Usual;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherUsualServie {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findTeacherUsual(String cIdOrName, String stIdOrName, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Usual> list=dao.findTeacherUsual(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getUsualTotal(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
