package service.Teacher;

import bean.Kind;
import bean.PageInfos;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherKindServie {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findTeacherKind(String cIdOrName, String stIdOrName, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Kind> list=dao.findTeacherKind(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getKindTotal(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
