package service.Student;

import bean.PageInfos;
import bean.Test;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;

public class StudentTestServie {
        StudentDao dao = new StudentDaoImpl();
        public PageInfos findStudentTest (String idOrName, String stid, String pageNum, String pageSize){
            //查询一页的真实数据
            List<Test> list = dao.findStudentTest(idOrName==null?"":idOrName, stid, (Long.valueOf(pageNum) - 1) * Long.valueOf(pageSize), pageSize);
            //查询总数
            long counts = dao.getTestTotal(idOrName, stid);
            PageInfos pageInfos = new PageInfos();
            pageInfos.setTotal(counts);
            pageInfos.setData(list);
            return pageInfos;
        }
}
