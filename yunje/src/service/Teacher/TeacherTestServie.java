package service.Teacher;

import bean.PageInfos;
import bean.Test;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherTestServie {
    TeacherDao dao = new TeacherDaoImpl();
    public PageInfos findStudentTest(String cIdOrName, String stIdOrName, String pageNum, String pageSize) {
        List<Test> list = dao.findTeacherTest(cIdOrName == null ? "" : cIdOrName, stIdOrName == null ? "" : stIdOrName, (Long.valueOf(pageNum) - 1) * Long.valueOf(pageSize), pageSize);
        //查询总数
        long counts = dao.getTestTotal(cIdOrName == null ? "" : cIdOrName, stIdOrName == null ? "" : stIdOrName);
        PageInfos pageInfos = new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
