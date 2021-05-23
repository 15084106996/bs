package service.Teacher;

import bean.OnlineTime;
import bean.PageInfos;
import bean.Test;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherTimeServie {
    TeacherDao dao = new TeacherDaoImpl();
    public PageInfos findTeacherTime(String stIdOrName, String cIdOrName, String pageNum, String pageSize) {
        List<OnlineTime> list = dao.findTeacherTime(cIdOrName == null ? "" : cIdOrName, stIdOrName == null ? "" : stIdOrName, (Long.valueOf(pageNum) - 1) * Long.valueOf(pageSize), pageSize);
        //查询总数
        long counts = dao.getTimeTotal(cIdOrName == null ? "" : cIdOrName, stIdOrName == null ? "" : stIdOrName);
        PageInfos pageInfos = new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }

}
