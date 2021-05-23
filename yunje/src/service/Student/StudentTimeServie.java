package service.Student;


import bean.OnlineTime;
import bean.PageInfos;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;

public class StudentTimeServie {
    public PageInfos findStudentTime(String stid,String idOrName, String pageNum, String pageSize) {
        StudentDao dao=new StudentDaoImpl();
            //查询一页的真实数据
            List<OnlineTime> list=dao.findStudentTime(stid,idOrName,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
            //查询总数
            long counts=dao.getTimeTotal(stid,idOrName);
            //查询总时间
            PageInfos pageInfos=new PageInfos();
            pageInfos.setData(list);
            pageInfos.setTotal(counts);
            return pageInfos;
    }
}

